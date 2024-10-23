import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.purpleAccent),
            //   child: Text(
            //     "Hi, I'm a drawer",
            //     style: TextStyle(color: Colors.red),
            //     ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Farhan Kabir"), 
              accountEmail: Text("farhankabir133@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/profile_picture.png"),
               ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
             ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("farhankabir133@gmail.com"),
              trailing: Icon(Icons.send),
            ),
             ListTile(
              leading: Icon(Icons.message),
              title: Text("Messagel"),
              subtitle: Text("farhankabir133@gmail.com"),
              trailing: Icon(Icons.send),
            ),
             ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
              subtitle: Text("farhankabir133@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
