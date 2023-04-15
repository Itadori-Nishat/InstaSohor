import 'package:flutter/cupertino.dart';

class USERDATAPROVIDER extends ChangeNotifier{
  String userNameProv = "";
  String userEmailProv = "";

  void updateUi(String provName, String probEmial) {
    userNameProv = provName;
    userEmailProv = probEmial;
    notifyListeners();
  }
}