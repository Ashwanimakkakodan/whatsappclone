import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: const Color.fromARGB(255, 38, 103, 76),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.currency_rupee_sharp),
          SizedBox(width: 5),
          Icon(Icons.camera_alt_outlined),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("New group"))),
              PopupMenuItem(child: Text(("New community"))),
              PopupMenuItem(child: Text(("Broadcast lists"))),
              PopupMenuItem(child: Text(("Linked devices"))),
              PopupMenuItem(child: Text(("Starred"))),
              PopupMenuItem(child: Text(("Payments"))),
              PopupMenuItem(child: Text(("Read all"))),
              PopupMenuItem(child: Text(("Settings"))),
            ],
          ),
        ],
      ),
    );
  }
}
