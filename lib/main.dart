import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text("Kiran's Magic 8 Ball"),
          backgroundColor: Colors.redAccent,
        ),
        body: MagicPage(),
      ),
    );
  }
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int firstMagicImg = 1;
  void changeMagicNumber() {
    setState(() {
      firstMagicImg = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("First Button was pressed");
                  changeMagicNumber();
                },
                child: Image.asset("images/ball$firstMagicImg.png")),
          ),
        ],
      ),
    );
  }
}
