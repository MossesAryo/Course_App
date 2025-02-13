import 'package:flutter/material.dart';
import 'package:myflutter_3/notification.dart';
import 'package:myflutter_3/options.dart';
import 'package:myflutter_3/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'My App';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('My App', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.music_video)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.grade)),
              Tab(icon: Icon(Icons.email)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.music_note, size: 100),
            Icon(Icons.music_video, size: 100),
            Icon(Icons.camera_alt, size: 100),
            Icon(Icons.grade, size: 100),
            Icon(Icons.email, size: 100),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 30,
                      backgroundImage: AssetImage("assets/img/avatar.png"),
                    ),
                    SizedBox(height: 8),
                    Text("Mosses Aryo Bimo", style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text("mossesab508@gmail.com", style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Options()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notification'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Notif()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('My Course'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text('Go Premium'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
