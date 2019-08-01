import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String text;
  SecondScreen(this.text, {Key key}) : super(key: key);

  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent.shade200,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("${widget.text}"),
            FlatButton(
              child: Text(
                "GO BACK",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pop(context, "${widget.text.toUpperCase()}");
              },
              color: Colors.amber.shade300,
            )
          ],
        ),
      ),
    );
  }
}
