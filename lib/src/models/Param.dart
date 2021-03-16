// import '../helpers/helper.dart';
import 'package:global_configuration/global_configuration.dart';

class GetAllCardParam {
  String api = "MobileLogin/GetGridCardAll";
  String currentPageList;
  String length;
  String userName;
  String userId;
  GetAllCardParam();
  toMap(int _currentPageList, int _length) {
    currentPageList = _currentPageList.toString();
    length = _length.toString();
    userName = GlobalConfiguration().getString('userName');
    userId = GlobalConfiguration().getString('userId');
  }
}
