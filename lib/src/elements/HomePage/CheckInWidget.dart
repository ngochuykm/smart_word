import 'package:flutter/material.dart';

class CheckInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text("Out: 02/02/2021 15:02:45",
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                )),
          ),
          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
          Expanded(
            flex: 1,
            child: Container(
              height: 24,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text("In: 02/02/2021 15:02:45",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 12)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
