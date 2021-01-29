import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String hintText;

  LoginButton({Key key, this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
            hintText: this.hintText,
            contentPadding: EdgeInsets.only(left: 14, bottom: 8, top: 8),
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
    );
  }
}
