import '../models/WhatToDo.dart';
import '../helpers/helper.dart';
import '../models/Param.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Stream<WhatToDo>> getAllCardParams(
    GetAllCardParam getAllCardParam) async {
  Uri uri = Helper.getUri(getAllCardParam.api);
  Map<String, dynamic> _queryParams = {
    'CurrentPageList': getAllCardParam.currentPageList,
    'Length': getAllCardParam.length,
    'UserName': getAllCardParam.userName,
    'UserId': getAllCardParam.userId,
  };

  uri = uri.replace(queryParameters: _queryParams);
  try {
    final client = new http.Client();
    final streamedRest = await client.send(http.Request('post', uri));

    return streamedRest.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .map((data) => Helper.getData(data))
        .expand((data) => (data as List))
        .map((data) => WhatToDo.fromJSON(data));
  } catch (e) {
    return new Stream.value(new WhatToDo.fromJSON({}));
  }
}
