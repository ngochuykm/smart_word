import 'package:flutter/material.dart';

class FileNoticeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        height: 60,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        offset: Offset(5.0, 5.0))
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Center(
                          child: Icon(
                        Icons.file_present,
                        color: Colors.green,
                        size: 30,
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Center(
                        // height: 30,
                        child: Text(
                          'File download',
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5, right: 5)),
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        offset: Offset(5.0, 5.0))
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Center(
                          child: Icon(
                        Icons.volume_down,
                        color: Colors.orangeAccent,
                        size: 30,
                      )),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Center(
                        // height: 30,
                        child: Text(
                          'Notice',
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
