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
  body: Center(
    child: Container(
      padding: EdgeInsets.all(2),
      clipBehavior:  Clip.antiAlias,
      width: 100,
      height: 100,
      child: const Text("I am inside box",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
      ),),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.red,Colors.yellow]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            ),
          ],
      ),
    ),
  ),
    );
  }
}

