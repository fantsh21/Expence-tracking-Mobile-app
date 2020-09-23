import 'package:flutter/material.dart';

class CatagoriesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(width: 20),
              Text("Mobile Card"),
            ],
          )
        ],
      ),
    );
  }
}
