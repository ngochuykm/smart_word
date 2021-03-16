// import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../models/WhatToDo.dart';
// import '../helpers/helper.dart';
import '../models/Param.dart';
import '../repository/WhatToDoRepostitory.dart';

class WhatToDoController extends ControllerMVC {
  List<WhatToDo> whatToDo = [];

  Future<void> getAllCard(int currentPageList, int length) async {
    GetAllCardParam getAllCardParam = new GetAllCardParam();
    getAllCardParam.toMap(currentPageList, length);
    final Stream<WhatToDo> stream = await getAllCardParams(getAllCardParam);
    stream.listen((WhatToDo _whatToDo) {
      print("what to do in contro lor ::: ");
      print(_whatToDo.updateTime.toString());
      setState(() => whatToDo.add(_whatToDo));
    }, onError: (a) {
      print(a);
    }, onDone: () {});
  }
}
