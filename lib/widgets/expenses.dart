import 'package:flutter/material.dart';
import 'package:paayment/widgets/dart.dart';

import 'pie_chart.dart';

class ExpanseSection extends StatelessWidget {
  const ExpanseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            'Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        pieColors[expenses.indexOf(value)],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    value['name'],
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                )),
            Expanded(
              flex: 6,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
