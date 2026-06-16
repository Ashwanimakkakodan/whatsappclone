import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsappclone/chat.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
    });
    return Scaffold(body: Center(child: Lottie.asset("assets/whatsapp.json")));
  }
}
