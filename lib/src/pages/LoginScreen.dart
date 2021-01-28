import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';

// import '../controllers/splash_screen_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _pin = false;
  TextEditingController _pinControlor = new TextEditingController();
  TextEditingController _userControlor = new TextEditingController();
  FocusNode focusNode;
  String hintText = "User Name";
  bool remenber_me = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        _userControlor.clear();
      }
    });
    setState(() {});
  }

  void _onRemenberMeChanged(bool newValue) {
    setState(() {
      remenber_me = !remenber_me;
    });
  }

  void _login() {
    Navigator.pushNamed(context, "/home");
    print("login");
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new ExactAssetImage('assets/img/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  child: RaisedButton(
                    padding: EdgeInsets.all(2),
                    textColor: Colors.grey[900],
                    onPressed: () {
                      setState(() {
                        _pin = !_pin;
                      });
                    },
                    child: _pin
                        ? Container(
                            height: 30,
                            child: TextField(
                              decoration: InputDecoration(),
                              controller: _pinControlor,
                              obscureText: true,
                              onChanged: (e) {
                                print(_pinControlor.text);
                              },
                            ),
                          )
                        : Icon(Icons.settings_rounded),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.grey[900],
                  onPressed: () {
                    print("object");
                  },
                  child: Text(
                    "langue",
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 160)),
            Container(
              child: Center(
                  child: SizedBox(
                width: 250,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  child: TextField(
                    style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
                    cursorColor: Colors.white10,
                    controller: _userControlor,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "User Name",
                      contentPadding:
                          EdgeInsets.only(left: 14, bottom: 8, top: 8),
                      focusedBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(25.7)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              )),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              child: Center(
                  child: SizedBox(
                width: 250,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
                  cursorColor: Colors.white10,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    contentPadding:
                        EdgeInsets.only(left: 14, bottom: 8, top: 8),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(25.7)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              )),
            ),
            Center(
              child: SizedBox(
                width: 280,
                child: Row(
                  children: [
                    SizedBox(
                        width: 180,
                        child: Row(children: <Widget>[
                          CircularCheckBox(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              checkColor: Colors.blueAccent,
                              activeColor: Colors.yellowAccent,
                              inactiveColor: Colors.blueAccent,
                              value: remenber_me,
                              onChanged: _onRemenberMeChanged),
                          Text(
                            "Nhớ mật khẩu",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ])),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Quên mật khẩu",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Center(
                child: Container(
              width: 250,
              height: 40.0,
              child: GestureDetector(
                  onTap: _login,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ))
          ],
        ),
      ),
    ));
  }
}
