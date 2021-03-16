class WhatToDo {
  int cardID;
  String cardCode;
  String cardName;
  String listName;
  String deadline;
  String currency;
  double cost;
  double completed;
  String beginTime;
  String endTime;
  String updateTime;
  String status;
  String createdBy;
  String createdTime;
  String updatedTimeTxt;
  String priority;
  String workType;
  String boardName;
  String createdDate;
  String total;
  String totalRow;
  String boardCode;
  bool isShowLabelAssign;
  String groupAssign;
  String departmentAssign;
  String wfName;
  String actName;
  String workflowCode;

  WhatToDo();

  WhatToDo.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      cardID = jsonMap["CardID"];
      cardCode = jsonMap["CardCode"].toString();
      cardName = jsonMap["CardName"].toString();
      listName = jsonMap["ListName"].toString();
      deadline = jsonMap["Deadline"].toString();
      currency = jsonMap["Currency"].toString();
      cost = jsonMap["Cost"].toDouble();
      completed = jsonMap["Completed"].toDouble();
      beginTime = jsonMap["BeginTime"].toString();
      endTime = jsonMap["EndTime"].toString();
      updateTime = jsonMap["UpdateTime"].toString();
      status = jsonMap["Status"].toString();
      createdBy = jsonMap["CreatedBy"].toString();
      createdTime = jsonMap["CreatedTime"].toString();
      updatedTimeTxt = jsonMap["UpdatedTimeTxt"].toString();
      priority = jsonMap["Priority"].toString();
      workType = jsonMap["WorkType"].toString();
      boardName = jsonMap["BoardName"].toString();
      createdDate = jsonMap["CreatedDate"].toString();
      total = jsonMap["Total"].toString();
      totalRow = jsonMap["TotalRow"].toString();
      boardCode = jsonMap["BoardCode"].toString();
      isShowLabelAssign = jsonMap["IsShowLabelAssign"];
      groupAssign = jsonMap["GroupAssign"].toString();
      departmentAssign = jsonMap["DepartmentAssign"].toString();
      wfName = jsonMap["WfName"].toString();
      actName = jsonMap["ActName"].toString();
      workflowCode = jsonMap["WorkflowCode"].toString();
    } catch (e) {
      cardID = 0;
      cardCode = "";
      cardName = "";
      listName = "";
      deadline = "";
      currency = "";
      cost = 0.0;
      completed = 0.0;
      beginTime = "";
      endTime = "";
      updateTime = "";
      status = "";
      createdBy = "";
      createdTime = "";
      updatedTimeTxt = "";
      priority = "";
      workType = "";
      boardName = "";
      createdDate = "";
      total = "";
      totalRow = "";
      boardCode = "";
      isShowLabelAssign = false;
      groupAssign = "";
      departmentAssign = "";
      wfName = "";
      actName = "";
      workflowCode = "";
      print(e.toString());
    }
  }
}
