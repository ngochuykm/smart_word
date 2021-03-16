import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class ToolsBarWidget extends StatefulWidget {
  final int index;
  _ToolsBarWidget createState() => _ToolsBarWidget();
  ToolsBarWidget({Key key, this.index}) : super(key: key);
}

class _ToolsBarWidget extends State<ToolsBarWidget> {
  // void _scrollView() {
  //   Navigator.pushNamed(context, "scrollView");
  // }
  // static List<int> WidgetItem = [0, 1, 2, 3, 4];
  int index = 1;

  setIndex(int _index) {
    setState(() {
      print("object" + _index.toString());
      index = _index;
    });
    Navigator.pushNamed(
      context,
      '/video_trimmer',
    );
  }

  @override
  Widget build(BuildContext context) {
    print(" ffd" + index.toString());
    return Container(
      height: 70,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black.withOpacity(0.4)),
            left: BorderSide(color: Colors.black.withOpacity(0.4)),
            right: BorderSide(color: Colors.black.withOpacity(0.4)),
            bottom: BorderSide(color: Colors.black.withOpacity(0.4)),
          ),
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0))),
      child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: GestureDetector(
            // onTap: _scrollView,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ToolsBarWidgetItems(
                    onPress: setIndex,
                    name: "Home",
                    index: 1,
                    itemIndex: index == 1 ? true : false),
                ToolsBarWidgetItems(
                    onPress: setIndex,
                    name: "Calendar",
                    index: 2,
                    itemIndex: index == 2 ? true : false),
                ToolsBarWidgetItems(
                    onPress: setIndex,
                    index: 3,
                    itemIndex: index == 3 ? true : false),
                ToolsBarWidgetItems(
                    onPress: setIndex,
                    name: "Call",
                    index: 4,
                    navigationTap: "/video_trimmer",
                    itemIndex: index == 4 ? true : false),
                ToolsBarWidgetItems(
                    onPress: setIndex,
                    name: "Control",
                    index: 5,
                    popUp: true,
                    itemIndex: index == 5 ? true : false),
              ],
            ),
          )),
    );
  }
}

class ToolsBarWidgetItems extends StatefulWidget {
  final bool itemIndex;
  final int index;
  final String name;
  final Function onPress;
  final bool popUp;
  final String navigationTap;
  ToolsBarWidgetItems(
      {Key key,
      this.itemIndex,
      this.onPress,
      this.index,
      this.name = "",
      this.navigationTap = "/home",
      this.popUp = false})
      : super(key: key);
  _ToolsBarWidgetItems createState() => _ToolsBarWidgetItems();
}

class _ToolsBarWidgetItems extends State<ToolsBarWidgetItems>
    with TickerProviderStateMixin {
  final icon = Icons.home_work;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tap" + widget.index.toString());
        !widget.popUp && widget.onPress(widget.index);
      },
      child: Row(
        children: <Widget>[
          AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: widget.itemIndex
                  ? EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8)
                  : EdgeInsets.all(0),
              decoration: BoxDecoration(
                color:
                    widget.itemIndex ? Colors.yellow[100] : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  widget.popUp
                      ? FocusedMenuHolder(
                          menuItems: [
                              FocusedMenuItem(
                                  title: Text("ddd"),
                                  trailingIcon: Icon(Icons.toll_outlined),
                                  onPressed: null),
                              FocusedMenuItem(
                                  title: Text("dddd"),
                                  trailingIcon: Icon(Icons.toll_outlined),
                                  onPressed: null),
                              FocusedMenuItem(
                                  title: Text("ddd"),
                                  trailingIcon: Icon(Icons.toll_outlined),
                                  onPressed: null)
                            ],
                          onPressed: () {},
                          blurSize: 0,
                          blurBackgroundColor: Colors.transparent,
                          menuOffset: 20,
                          openWithTap: true,
                          duration: Duration(milliseconds: 300),
                          animateMenuItems: false,
                          menuWidth: 150,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 8, right: 8, top: 4, bottom: 4),
                            child: Icon(
                              icon,
                              size: 30,
                              color: widget.itemIndex
                                  ? Colors.blueAccent
                                  : Colors.black26,
                            ),
                          ))
                      : Icon(
                          icon,
                          size: 30,
                          color: widget.itemIndex
                              ? Colors.blueAccent
                              : Colors.black26,
                        ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  AnimatedSize(
                    vsync: this,
                    curve: Curves.easeOut,
                    duration: Duration(milliseconds: 500),
                    child: Text(widget.itemIndex ? widget.name : "",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.yellow[900],
                        )),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
