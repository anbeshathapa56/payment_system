import 'package:flutter/material.dart';
import 'package:paayment/widgets/cardSection.dart';
import 'package:paayment/widgets/dart.dart';
import 'package:paayment/widgets/header.dart';

import 'widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Open Sans'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpanseSection())
        ],
      ),
    );
  }
}
