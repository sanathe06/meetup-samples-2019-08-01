import 'package:flutter/material.dart';
import 'package:meetup/common.dart';

class ImageAssetScreen extends StatefulWidget {
  ImageAssetScreen({Key key}) : super(key: key);

  _ImageAssetScreenState createState() => _ImageAssetScreenState();
}

class _ImageAssetScreenState extends State<ImageAssetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Constant().icon,
            Text(
              "This is  Styled Text and Image",
              style: Constant.textStyle3,
            )
          ],
        ),
      ),
    );
  }
}
