import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Communities",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text(("Settings"))),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.group_add_rounded, color: Colors.grey),
            title: Text(
              "New Community",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
