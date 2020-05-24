import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:flutter/material.dart';

import 'landing-page.dart';

class AccountSuccess extends StatefulWidget {
  @override
  _AccountSuccessState createState() => _AccountSuccessState();
}

class _AccountSuccessState extends State<AccountSuccess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(child: Image.asset('images/logo2.png')),
                Center(
                  child: Text(
                    "Bloomzon User",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffAF2E1D),
                      fontSize: 24,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Stack(
                  children: <Widget>[
                    Image.asset('images/mark2.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 75.0, 0.0, 0.0),
                      child: Image.asset('images/redmark.png'),
                    ),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Account Creation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffAF2E1D),
                          ),
                        ),
                        Text(
                          'Successful',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffAF2E1D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonTheme(
                        height: 40,
                        minWidth: 100,
                        child: RaisedButton(
                          color: Color(0xffAF2E1D),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffAF2E1D),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Dashboard",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      GroceriesDashboardPage()),
                            );
                          },
                        ),
                      ),
                      ButtonTheme(
                        height: 40,
                        minWidth: 100,
                        child: RaisedButton(
                          color: Color(0xffAF2E1D),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffAF2E1D),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Shop",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
