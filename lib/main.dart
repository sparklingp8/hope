import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    home: mainScreen(),
    theme:ThemeData(
       primarySwatch: Colors.purple,
    ),
  ));
}

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hope yes"),
        elevation: 0,
      ),
  body: Container(
    child: Text("hi hope"),
  ),
    );
  }
}

