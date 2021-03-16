import 'package:flutter/material.dart';
import './ProgressWidget.dart';
import './CheckInWidget.dart';
import './FileNoticeWidget.dart';
import './ToolsWidget.dart';

class BodyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProgressWidget(),
        CheckInWidget(),
        FileNoticeWidget(),
        ToolsWidget(),
        // ToolsBarWidget()
      ],
    );
  }
}
