import 'package:flutter/material.dart';
import '../../../models/WhatToDo.dart';

class WhatTodoItem extends StatefulWidget {
  final WhatToDo whatToDo;
  WhatTodoItem({this.whatToDo});
  _WhatTodoItem createState() => _WhatTodoItem();
}

class _WhatTodoItem extends State<WhatTodoItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "#" + widget.whatToDo.cardID.toString() + " : ",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.5),
                  ),
                  Text(
                    widget.whatToDo.cardName,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.5),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Row(
                children: [
                  Icon(
                    Icons.stairs,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Status  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Container(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
                    color: Colors.green,
                    child: Text(
                      widget.whatToDo.status,
                      style: TextStyle(
                          fontSize: 12, color: Colors.white, height: 1.5),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 16)),
                  Container(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent[100],
                    ),
                    child: Text(
                      "Đã quá hạn",
                      style: TextStyle(
                          fontSize: 12, color: Colors.white, height: 1.5),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.time_to_leave_sharp,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Progress  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    widget.whatToDo.completed.toString(),
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Start  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    widget.whatToDo.beginTime,
                    style: TextStyle(color: Colors.green, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "End  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    widget.whatToDo.endTime,
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Activity  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    "lên kế hoạch, Thực hiện",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Workflow  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    "Luồng hành chính",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(padding: EdgeInsets.only(left: 4)),
                  Text(
                    "Phòng ban  : ",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                  Text(
                    "Phòng xuất nhập khẩu, phòng giám đốc",
                    style: TextStyle(fontSize: 12, height: 1.5),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
