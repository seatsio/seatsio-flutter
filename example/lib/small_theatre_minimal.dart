import 'package:flutter/material.dart';
import 'package:seatsio/seatsio.dart';

class SmallTheatreMinimal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final multiLevelPricing = [
      PricingForCategory(
        category: "1",
        ticketTypes: [
          TicketType(ticketType: "adult", price: 30),
          TicketType(ticketType: "child", price: 20, label: "For children"),
        ],
      ),
      PricingForCategory(
        category: "2",
        ticketTypes: [
          TicketType(ticketType: "adult", price: 40),
          TicketType(ticketType: "child", price: 30, label: "For children"),
          TicketType(ticketType: "65+", price: 25, label: "For senior citizens"),
        ],
      ),
      PricingForCategory(category: "3", price: 50),
    ];

    final simplePricing = [
      PricingForCategory(category: 1, price: 30),
      PricingForCategory(category: "2", price: 40),
      PricingForCategory(category: "3", price: 50),
    ];

    return Scaffold(
        appBar: AppBar(title: Text("Small Theatre - Minimal Config")),
        body: SeatsioSeatingChart(
          config: SeatingChartConfig(
            (b) => b
              ..workspaceKey = "publicDemoKey"
              ..events.replace(["smallTheatreEvent2"])
              ..pricing.replace(simplePricing),
          ),
        ));
  }
}
