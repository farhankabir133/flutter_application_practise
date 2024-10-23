import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "This is Farhan Kabir";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Set mainAxisSize to minimize vertical space usage
              children: [
                Image.asset(
                  "assets/profile_picture.png", 
                  fit: BoxFit.cover, 
                ),
                const SizedBox(height: 8), // Add some spacing between the image and the text
                Text(
                  myText, 
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Optional styling
                ),
                const SizedBox(
                  height: 25,
                ),
                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Enter something here",
                      border: OutlineInputBorder(),
                      labelText: "Name",
                    ),
                  ),
                )
              ], 
            ),
          ),
        ),
      ),

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
        onPressed: () {
          myText= _nameController.text;
          setState(() {});
        },
        hoverColor: Colors.black,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
