import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        child: Image.asset("assets/images/4141223.jpg"),
                      ),
                    ],
                  ),
                  Stack(alignment: Alignment.topRight, children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    CircleAvatar(
                      radius: 5,
                    ),
                  ])
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 70,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.attach_money,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 200,
                            child: Container(
                              child: Column(
                                children: <Widget>[Text("For buying PS5")],
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            child: Column(
                              children: <Widget>[Text("For buying PS5")],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
