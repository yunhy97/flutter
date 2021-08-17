class EventProvider {
  /*
  StreamProvider 사용
  위젯이 스트림의 일부로 발생하는 상태에 액세스할 수 있음
  스트림은 스트림이 닫힐 때까지 계속 값을 제공
   */
  Stream<int> intStream() {
    Duration interval = Duration(seconds: 2);
    int _count = 0;
    return Stream<int>.periodic(interval,(int _count) => _count++);
    // .periodic(기간, 계산): 일정 간격으로 이벤트를 반복적으로 내보내는 스트림
  }
}