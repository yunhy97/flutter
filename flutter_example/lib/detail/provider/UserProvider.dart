import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_example/detail/models/User.dart';
import 'package:flutter_example/detail/models/UserList.dart';

class UserProvider {
  /*
  FutureProvider 사용
  비동기식 위젯 트리에 데이터를 제공하는 데 사용
   */
  final String _dataPath = "assets/json/users.json";
  List<User> users;

  /*
  Future는 일부 작업을 예약한 다음 원래 작업이 완료될 때까지 현재 스레드를 다시 작동하도록 해제
  */
  Future<List<User>> loadUserData() async {
    var dataString = await loadAsset();
    Map<String, dynamic> jsonUserData = jsonDecode(dataString);
    users = UserList.fromJson(jsonUserData['users']).users;
    print('done loading user!' + jsonEncode(users));

    return users;
  }
  Future<String> loadAsset() async {
    return await Future.delayed(Duration(seconds: 10), () async {
      return await rootBundle.loadString(_dataPath);
      //rootBundle: 리소스에 대한 액세스는 비동기식이므로
      //네트워크를 통해 또는 응용 프로그램의 사용자 인터페이스를 차단하지 않고
      //로컬 파일 시스템에서 투명하게 로드될 수 있음
    });
  }
}