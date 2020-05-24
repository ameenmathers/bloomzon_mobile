import 'package:bloomzon/Initial-pages/reset-password.dart';
import 'package:flutter/material.dart';

import 'authenticate.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Image image1;

  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  bool _termsChecked = true;

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "images/image4.png",
                      fit: BoxFit.fill,
                    ),
                    height: 190,
                    width: 470,
                  ),
                  Column(
                    children: <Widget>[
                      Center(child: Image.asset('images/logo.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'User Login',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _registerFormKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff02499B),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                          child: TextFormField(
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            enabled: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                  borderSide: BorderSide(
                                    color: Color(0xff02499B),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                          child: TextFormField(
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            enabled: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: 'More than 6 characters',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                  borderSide: BorderSide(
                                    color: Color(0xff02499B),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
                        child: Container(
                          height: 65,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Color(0xff02499B),
                            ),
                            child: CheckboxListTile(
                              title: new Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 12,
                                ),
                              ),
                              value: _termsChecked,
                              selected: false,
                              checkColor: Color(0xff02499B),
                              activeColor: Colors.blue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value) =>
                                  setState(() => _termsChecked = value),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Forgot your password Click',
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPage()),
                                  );
                                },
                                child: Text(
                                  "HERE",
                                  style: TextStyle(
                                    color: Color(0xffAF2E1D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Forgot your username Click',
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPage()),
                                  );
                                },
                                child: Text(
                                  "HERE",
                                  style: TextStyle(
                                    color: Color(0xffAF2E1D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonTheme(
                      height: 49,
                      minWidth: 200,
                      child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthenticatePage()),
                            );
                          },
                          color: Color(0xffAF2E1D),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xffAF2E1D),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
