import 'package:flutter/material.dart';

import 'collections/collection_screen.dart';
import 'common.dart';
import 'imageasset/image_screen.dart';
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
          '/': (context) => ImageAssetScreen(),
          '/second': (context) => SecondScreen(""),
        });
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                  child: Text(
                "$counter",
                style: Constant.textStyle2,
              )),
              RaisedButton(
                child: Text("+"),
                onPressed: () {
                  counter++;
                  setState(() {
                    
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
