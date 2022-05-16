import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCED);
List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: const Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue.withOpacity(0.2),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20,
  )
];

List expenses = [
  {"name": "Groceries", "amount": 500},
  {"name": "Online Shopping", "amount": 100},
  {"name": "Eating Out", "amount": 80},
  {"name": "Bills", "amount": 50},
  {"name": "Subscriptions", "amount": 100},
  {"name": "Fees", "amount": 30},
];
List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];
