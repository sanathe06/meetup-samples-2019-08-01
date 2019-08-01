import 'package:flutter/material.dart';
import 'package:meetup/navigations/second_screen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent.shade400,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a text',
              ),
              controller: textController,
            ),
            FlatButton(
              child: Text(
                "GO TO",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                String result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(textController.text),
                  ),
                );
                Navigator.pushNamed(context, '/second');
                textController.text = result;
              },
              color: Colors.amber.shade300,
            )
          ],
        ),
      ),
    );
  }
}
