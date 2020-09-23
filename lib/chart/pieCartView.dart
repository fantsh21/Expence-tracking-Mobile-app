import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:xpense_trcr/chart/theChart.dart';

class PieChartview extends StatefulWidget {
  @override
  _PieChartviewState createState() => _PieChartviewState();
}

class _PieChartviewState extends State<PieChartview> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: LayoutBuilder(
        builder: (context, constraint) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                spreadRadius: -10,
                blurRadius: 17,
                offset: Offset(-5, -5),
                color: Colors.white,
              ),
              BoxShadow(
                spreadRadius: -2,
                blurRadius: 10,
                offset: Offset(5, 5),
                color: Colors.pinkAccent[200],
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.6,
                  child: CustomPaint(
                    child: Center(),
                    foregroundPainter: TheChart(
                      width: constraint.maxWidth * 0.5,
                      catagory: kCatagories,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
