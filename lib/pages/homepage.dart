import 'package:flutter/material.dart';
import 'package:hope/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {

    super.initState();
    fetchdata();
  }

  fetchdata() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Hope yes"),
        elevation: 0,
      ),
      drawer: Drawer1(),
      body: data == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(itemBuilder: (context,index){
            return ListTile(
              title: Text(data[index]["title"]),
              subtitle: Text("ID${data[index]["id"]}"),
              leading: Image.network(data[index]["url"]),
            );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
