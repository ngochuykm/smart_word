import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(color: Colors.transparent),
        child: GestureDetector(
          onTap: () {
            print(" tap on bottom");
            Navigator.pushNamed(context, "/scrollView");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ProgressWidgetItem(),
              ProgressWidgetItem(),
              ProgressWidgetItem(),
              ProgressWidgetItem(),
              ProgressWidgetItem()
            ],
          ),
        ));
  }
}

class ProgressWidgetItem extends StatelessWidget {
  final icon = Icons.ac_unit;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        height: 100,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.elliptical(3, 3)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        offset: Offset(5.0, 5.0))
                  ],
                ),
                child: Icon(
                  icon,
                  size: 50,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("Progress",
                style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    color: Colors.blueGrey))
          ],
        ));
  }
}
