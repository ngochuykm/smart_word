import 'package:flutter/material.dart';

class ToolsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return DraggableScrollableSheet(
    //   builder: (BuildContext context, ScrollController scrollController) {
    //     return Container(
    //       color: Colors.blue[100],
    //       child: ListView.builder(
    //
    //       ),
    //     );
    //   },
    // );
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                    ToolsWidgetItems(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ToolsWidgetItems extends StatelessWidget {
  final icon = Icons.ac_unit;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        height: 100,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 70,
              height: 70,
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
                  size: 60,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text("Progress",
                style: TextStyle(fontSize: 12, color: Colors.blueGrey))
          ],
        ));
  }
}
