import 'package:seatsio/seatsio.dart';
import 'package:flutter/material.dart';

class LargeTheatreMaximal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final multiLevelPricing = [
      PricingForCategory(
        category: "Arena",
        ticketTypes: [
          TicketType(ticketType: "adult", price: 30, originalPrice: 50),
          TicketType(ticketType: "child", price: 20, label: "For children"),
        ],
      ),
      PricingForCategory(
        category: "Stalls",
        ticketTypes: [
          TicketType(ticketType: "adult", price: 40),
          TicketType(ticketType: "child", price: 30, label: "For children"),
          TicketType(ticketType: "65+", price: 25, label: "For senior citizens"),
        ],
      ),
      PricingForCategory(category: "3", price: 50),
    ];

    final simplePricing = [
      PricingForCategory(category: 1, price: 30, originalPrice: 40),
      PricingForCategory(category: "2", price: 40),
      PricingForCategory(category: "3", price: 50),
    ];

    final priceFormatter = (num price) => "€${price.toStringAsFixed(2)}";

    final popoverInfo = (SeatsioObject object) => "something [b]something[/b] ${object.label}";

    final onChartRendered = () => print("Chart rendered");
    final onChartRenderingFailed = () => print("Chart rendering failed");
    final onChartRerenderingStarted = () => print("Chart rerendering started");
    final onObjectClicked = (SeatsioObject object) => print("object clicked - ${object.label}");
    final onObjectSelected = (SeatsioObject object, SelectedTicketType? ticketType) =>
        print("object selected - ${object.label} - ${ticketType?.price}");
    final onObjectDeselected = (SeatsioObject object, SelectedTicketType? deselectedTicketType) =>
        print("object deselected - ${object.label} - ${deselectedTicketType?.price}");
    final onObjectStatusChanged = (SeatsioObject object) => print("object status changed - ${object.label}");
    final onObjectBooked = (SeatsioObject object) => print("object booked - ${object.label}");
    final onSessionInitialized =
        (HoldToken token) => print("session initialized - ${token.token} - ${token.expiresAt}");
    final onHoldCallsInProgress = () => print("hold calls in progress");
    final onHoldCallsComplete = () => print("hold calls complete");
    final onHoldSucceeded = (List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes) =>
        print("hold succeeded - ${objects.map((e) => e.label)} - ${ticketTypes?.map((e) => e.price)}");
    final onHoldFailed = (List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes) =>
        print("hold failed - ${objects.map((e) => e.label)} - ${ticketTypes?.map((e) => e.price)}");
    final onHoldTokenExpired = () => print("hold token expired");
    final onReleaseHoldSucceeded = (List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes) =>
        print("release hold succeeded - ${objects.map((e) => e.label)} - ${ticketTypes?.map((e) => e.price)}");
    final onReleaseHoldFailed = (List<SeatsioObject> objects, List<SelectedTicketType>? ticketTypes) =>
        print("release hold failed - ${objects.map((e) => e.label)} - ${ticketTypes?.map((e) => e.price)}");
    final onSelectionValid = () => print("selection valid");
    final onSelectionInvalid = (List<String> violations) => print("selection invalid: ${violations}");
    final onFullScreenOpened = () => print("full screen opened");
    final onFullScreenClosed = () => print("full screen closed");
    final onFilteredCategoriesChanged = (List<SeatsioCategory> categories) => print("filtered categories changed: ${categories.map((c) => c.label)}");

    return Scaffold(
        appBar: AppBar(title: Text("Small Theatre - Minimal Config")),
        body: SeatsioSeatingChart(
          config: SeatingChartConfig((b) => b
            ..workspaceKey = "publicDemoKey"
            ..events = ["largeTheatreEvent"]
            ..pricing = multiLevelPricing
            ..priceFormatter = priceFormatter
            ..showSectionPricingOverlay = true
            // ..selectedObjects = ['Circle P-1-12', 'Circle P-1-11', 'Circle P-1-10']
            ..selectionValidators = [
              NoOrphanSeats(ignoreCategories: true, mode: NoOrphanSeatsMode.strict, highlight: true),
              ConsecutiveSeats(),
              // MinimumSelectedPlaces(4)
            ]
            //..maxSelectedObjects = MaxSelectedObjects.total(4)
            //..maxSelectedObjects = MaxSelectedObjects.rules([
            //  MaxSelectedObjectsRule.perTicketType(ticketType: "adult", quantity: 2),
            // MaxSelectedObjectsRule.perTicketType(ticketType: "child", quantity: 2),
            // MaxSelectedObjectsRule.total(3)
            // ])

            // ..numberOfPlacesToSelect = 2
            ..multiSelectEnabled = true
            ..objectPopover.replace(ObjectPopover((b) => b
              ..showAvailability = false
              ..showCategory = false
              ..showLabel = false
              ..showPricing = false
              ..showUnavailableNotice = true
              ..stylizedLabel = true
              ..confirmSelection = 'auto'
              ..confirmTicketTypeSelection = false))
            ..popoverInfo = popoverInfo
            // ..language = 'nl'
            ..messages = {
              "STAGE": "Stage",
            }
            ..categoryFilter.replace(CategoryFilter((b) => b
              ..enabled = true
              ..multiSelect = true
              ..sortBy = CategoryFilterSortBy.price))
            //..availableCategories = ["Stalls"]
            //..unavailableCategories = ["Stalls"]
            //..filteredCategories = ["Stalls"]
            // ..channels = ["channel1", "channel2"]
            // ..objectColor = "function(object, defaultColor) { return object.label.startsWith('A') ? 'green' : 'blue'; }"
            // ..sectionColor = "function(object, defaultColor) { return 'red' ; }"
            // ..objectLabel = "function(object) { return object.label + ' (' + object.status + ')'; }"
            // ..objectIcon = "function(object) { return 'star' }"
            ..showSectionContents = ShowSectionContents.onlyAfterZoom
            ..isObjectVisible = "function() { return true }"
            ..showSeatLabels = true
            ..session = Session.cont
            // ..holdToken = "someHoldToken"
            //..holdOnSelectForGAs = true
            // ..showMinimap = false
            // ..showFullScreenButton = false
            ..showLegend = true
            ..colorScheme = SeatsioColorScheme.dark
            ..legendConfig.replace(LegendConfig((b) => b
              ..hideNonSelectableCategories = true
              ..hideUnavailableLegendItems = true
              ..hidePricing = false
              ..hideCategoryName = true))
            ..onChartRendered = onChartRendered
            ..onChartRenderingFailed = onChartRenderingFailed
            ..onChartRerenderingStarted = onChartRerenderingStarted
            ..onObjectClicked = onObjectClicked
            ..onObjectSelected = onObjectSelected
            ..onObjectDeselected = onObjectDeselected
            ..onObjectStatusChanged = onObjectStatusChanged
            ..onObjectBooked = onObjectBooked
            ..onSessionInitialized = onSessionInitialized
            ..onHoldCallsInProgress = onHoldCallsInProgress
            ..onHoldCallsComplete = onHoldCallsComplete
            ..onHoldSucceeded = onHoldSucceeded
            ..onHoldFailed = onHoldFailed
            ..onHoldTokenExpired = onHoldTokenExpired
            ..onReleaseHoldSucceeded = onReleaseHoldSucceeded
            ..onReleaseHoldFailed = onReleaseHoldFailed
            ..onSelectionValid = onSelectionValid
            ..onSelectionInvalid = onSelectionInvalid
            ..onFullScreenOpened = onFullScreenOpened
            ..onFullScreenClosed = onFullScreenClosed
            ..onFilteredCategoriesChanged = onFilteredCategoriesChanged),
        ));
  }
}
