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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            Padding(padding: EdgeInsets.only(top: 200)),
            Container(
              child: Center(
                  child: SizedBox(
                width: 250,
                child: TextField(
                  style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
                  cursorColor: Colors.white10,
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
                      Icons.lock,
                      color: Colors.blueAccent,
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
                  onTap: (){
                    FocusScope.of(context).unfocus();
                  },
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
                      Icons.verified_user,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              )),
            ),
          ],
        ),
        alignment: FractionalOffset(0.5, 0.5),
      ),
    ));
  }
}
