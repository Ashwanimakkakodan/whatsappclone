import 'package:flutter/material.dart';
import 'package:whatsappclone/calls.dart' show Calls;

import 'package:whatsappclone/chats.dart';
import 'package:whatsappclone/communities.dart';
import 'package:whatsappclone/update.dart';

class Whatsapp extends StatefulWidget {
  Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List<Widget> screens = [Chats(), Update(), Communities(), Calls()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
        ],
      ),
    );
  }
}
