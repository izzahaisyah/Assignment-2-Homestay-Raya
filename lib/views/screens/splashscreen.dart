import 'dart:async';
import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    User user = User(
      id: "0",
      email: "notregistered",
      phone: "notregistered",
      name: "notregistered",
      // address: "na",
      //regdate: "0"
    );

    Timer(
    const Duration(seconds: 5),
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (content) => MainScreen(user: user))));
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Homestay Raya",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              CircularProgressIndicator(),
              Text("Version 1.0b"),
            ]),
      ),
    );
  }
}
