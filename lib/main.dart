import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MainScreen(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
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
        child: Container(
          color: Colors.deepPurpleAccent,
          width: 100,
          height: 100,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
