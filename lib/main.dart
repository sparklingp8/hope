import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MainScreen(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("person1"),
              accountEmail: Text("person1.email"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person1"),
              subtitle: Text("job11"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text("Email"),
              subtitle: Text("job11.email"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
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
