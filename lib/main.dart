import 'package:flutter/material.dart';
import 'package:xpense_trcr/expence.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 1),
            padding: EdgeInsets.symmetric(),
            child: Center(
              child: Image.asset("assets/images/30679.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Expanded(
                child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent[700]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  labelText: "Username"),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Expanded(
                child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent[700]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  labelText: "Password"),
            )),
          ),
          Container(
            child: Container(
              child: RaisedButton(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFBb43757),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Expenses()),
                  );
                },
                padding: EdgeInsets.symmetric(vertical: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
