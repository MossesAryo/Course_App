import 'package:flutter/material.dart';
import 'package:myflutter_3/profile.dart';

// Fungsi ini memulai proses build dari aplikasi flutter.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'My App';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    ); // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "My App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
          child: Text(
        "Latihan Drawer",
        style: TextStyle(fontSize: 50, fontFamily: "Cursive"),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, 
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 30,
                    backgroundImage: AssetImage(
                      "assets/img/avatar.png", 
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Mosses Aryo Bimo",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "mossesab508@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Profile()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
