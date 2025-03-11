import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

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

    return Scaffold(
        appBar: AppBar(title: Text("Small Theatre - Minimal Config")),
        body: SeatsioSeatingChart(
          config: SeatingChartConfig((b) => b
                ..workspaceKey = "publicDemoKey"
                ..events = ["largeTheatreEvent"]
                ..pricing = simplePricing
                ..priceFormatter = priceFormatter
                ..showSectionPricingOverlay = true
                // ..selectedObjects = ['Circle P-1-12', 'Circle P-1-11', 'Circle P-1-10']
                ..selectionValidators = [
                  // NoOrphanSeats(ignoreCategories: true, mode: NoOrphanSeatsMode.strict, highlight: true),
                  // ConsecutiveSeats(),
                  // MinimumSelectedPlaces(4)
                ]
                //..maxSelectedObjects = MaxSelectedObjects.total(4)
                //..maxSelectedObjects = MaxSelectedObjects.rules([
                //  MaxSelectedObjectsRule.perTicketType(ticketType: "adult", quantity: 2),
                // MaxSelectedObjectsRule.perTicketType(ticketType: "child", quantity: 2),
                // MaxSelectedObjectsRule.total(3)
                // ])

                ..numberOfPlacesToSelect = 2
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

              // ..objectColor = "function(object, defaultColor) { return object.id.startsWith('A') ? 'red' : 'blue'; }"
              ),
        ));
  }
}
