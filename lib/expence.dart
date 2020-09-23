import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  bool expandIt = true;
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
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                  Stack(alignment: Alignment.topRight, children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      iconSize: 30,
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
            height: expandIt ? 400 : 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "EXPENSES",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                !expandIt
                    ? SizedBox.shrink()
                    : Container(
                        height: 300,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return buildLVContainer();
                          },
                        ),
                      ),
                IconButton(
                    icon: Icon(expandIt
                        ? Icons.keyboard_arrow_up
                        : Icons.arrow_downward),
                    onPressed: () {
                      setState(
                        () {
                          expandIt = !expandIt;
                        },
                      );
                    })
              ],
            ),
          ),
        )
      ],
    ));
  }

  Container buildLVContainer() {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 70,
      // this will be fr expense list icons
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
          // the expenses will be written here in this row
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                width: 200,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "For buying PS5",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "sep-22-2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
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
  }
}
