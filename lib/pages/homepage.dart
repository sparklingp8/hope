import 'package:flutter/material.dart';
import 'package:hope/drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var name = "Change my name";
  TextEditingController _cn1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Hope yes"),
        elevation: 0,
      ),
      drawer: Drawer1(),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/code.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "${name}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _cn1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), label: Text("Name")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          name = _cn1.text;
          print(name);
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
