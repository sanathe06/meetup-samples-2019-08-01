import 'package:flutter/material.dart';

import 'collections/collection_screen.dart';
import 'navigations/first_screen.dart';
import 'navigations/second_screen.dart';
import 'network/network_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => NetworkScreen(),
          '/second': (context) => SecondScreen(""),
        });
  }
}
