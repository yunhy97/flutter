import 'package:demo_app/view/common/customCheckBoxListTile.dart';
import 'package:demo_app/view/common/customDropDownButton.dart';
import 'package:flutter/material.dart';
import 'view/common/customAppBar.dart';
import 'view/common/customButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomCheckBoxListTile(),
            CustomDropDown()
          ],
        ),
      ),
      floatingActionButton: ElevatedBtn(
        name: "click click",
        onPressed:  () {},
      )/*RawMaterialBtn(
        name: 'BTN',
        onPressed: () {},
      ),*/
    );
  }
}
