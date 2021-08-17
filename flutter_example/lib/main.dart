import 'package:flutter/material.dart';
import 'package:flutter_example/detail/pages/MyCountPage.dart';
import 'package:flutter_example/detail/pages/MyEventPage.dart';
import 'package:flutter_example/detail/pages/MyUserPage.dart';
import 'package:flutter_example/detail/provider/DataProvider.dart';
import 'package:flutter_example/detail/provider/EventProvider.dart';
import 'package:flutter_example/detail/provider/UserProvider.dart';
import 'package:provider/provider.dart';

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
        primarySwatch: Colors.orange,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DataProvider()),
          FutureProvider(create: (_) => UserProvider().loadUserData()),
          StreamProvider(create: (_) => EventProvider().intStream(), initialData: 0,)
        ],
        child: DefaultTabController(
          length: 3,
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Provider, Future Demo'),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.add)),
                    Tab(icon: Icon(Icons.person)),
                    Tab(icon: Icon(Icons.message)),
                  ],
                ),
              ),
              body: TabBarView(children: [
                MyCountPage(),
                MyUserPage(),
                MyEventPage()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
