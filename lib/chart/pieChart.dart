import 'package:flutter/material.dart';
import 'package:xpense_trcr/chart/catagoriesRow.dart';
import 'package:xpense_trcr/chart/pieCartView.dart';

class PieChart extends StatefulWidget {
  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 400,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 250,
                ),
                Text(
                  "Daily Expenses",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Expanded(
                    child: Row(
                  children: <Widget>[
                    CatagoriesRow(),
                    PieChartview(),
                  ],
                )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
