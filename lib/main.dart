import 'package:flutter/material.dart';
import 'package:hope/pages/homepage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MainScreen(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
