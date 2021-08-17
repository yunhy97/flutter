import 'package:flutter/cupertino.dart';

class DataProvider extends ChangeNotifier {
  /*
  ChangeNotifierProvider 사용
  변경이 발생할 때 모든 수신 클래스에 알릴 클래스를 정의
   */
  int _count = 0;
  int get count => _count;

  DataProvider() {}
  void incrementCount(){
    _count++;
    notifyListeners(); // 모든 리스너에게 현재 상태(이 경우 "count")를 알릴 때마다 호출, 자동으로 UI가 업데이트
  }
}