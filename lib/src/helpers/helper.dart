import 'package:flutter/cupertino.dart';
import 'package:global_configuration/global_configuration.dart';

class Helper {
  BuildContext context;
  static capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  static Uri getUri(String path) {
    String _path = Uri.parse(GlobalConfiguration().getString('base_url')).path;
    Uri uri = Uri(
        scheme: Uri.parse(GlobalConfiguration().getString('base_url')).scheme,
        host: Uri.parse(GlobalConfiguration().getString('base_url')).host,
        port: Uri.parse(GlobalConfiguration().getString('base_url')).port,
        path: _path + path);
    return uri;
  }

  static getData(Map<String, dynamic> data) {
    return data['Object']['data'] ?? [];
  }
}
