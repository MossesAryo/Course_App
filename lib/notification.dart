import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  final GlobalKey cardA = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('My App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: ExpansionTileCard(
        key: cardA,
        leading: const CircleAvatar(child: Text('A')),
        title: const Text('Tap untuk Expand!'),
        subtitle: const Text('Terdapat Logo Nextgen di dalamnya.'),
        children: [
          const Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Image.asset('assets/img/avatar.png')),
          ),
        ],
      ),
    );
  }
}
