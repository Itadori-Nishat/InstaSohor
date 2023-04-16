import 'package:flutter/cupertino.dart';

class USERDATAPROVIDER extends ChangeNotifier{
  String userNameProv = "";
  String userEmailProv = "";
  String userPhoneProv = "";

  void updateUi(String provName, String probEmial, String provPho) {
    userNameProv = provName;
    userEmailProv = probEmial;
    userPhoneProv = provPho;
    notifyListeners();
  }
}