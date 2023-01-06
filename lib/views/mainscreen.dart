import 'package:assignment_2_279456/views/loginscreen.dart';
import 'package:assignment_2_279456/views/registrationscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Screen"), actions: [
        IconButton(
            onPressed: _registrationform,
            icon: const Icon(Icons.app_registration)),
            IconButton(
            onPressed: _loginform,
            icon: const Icon(Icons.login))
      ]),
      body: const Center(
        child: Text("Main Screen"),
      ),
    );
  }

  void _registrationform() {
    Navigator.push(context,
      MaterialPageRoute(builder: (content) => const RegistrationScreen()));
  }

  void _loginform() {
    Navigator.push(context,
      MaterialPageRoute(builder: (content) => const LoginScreen()));
  }
}
