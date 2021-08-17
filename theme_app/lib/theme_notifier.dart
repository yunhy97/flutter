import 'package:flutter/material.dart';
import 'package:theme_app/theme_value.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = blueTheme;

  // 생성자
  ThemeNotifier(this._themeData);

  //getter
  getTheme() => _themeData;

  //setter
  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    // 개체가 변경될 때마다 이 메서드를 호출하여 클라이언트에게 개체가 변경되었을 수 있음을 알림
    notifyListeners();
  }

}