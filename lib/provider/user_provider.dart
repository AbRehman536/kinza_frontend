import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{

  String _name = "";
  String _email = "";

  ///set Name
  void setName(String val){
    _name = val;
    notifyListeners();
  }
  ///set Email
  void setEmail(String val){
    _email = val;
    notifyListeners();
  }

  ///get Name
  String getName() => _name;
  ///get Email
  String getEmail() => _email;
}