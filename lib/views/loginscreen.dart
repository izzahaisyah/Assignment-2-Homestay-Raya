import 'package:assignment_2_279456/views/mainscreen.dart';
import 'package:assignment_2_279456/views/registrationscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Card(
        elevation: 8,
        margin: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (val) =>
                    val!.isEmpty || !val.contains("@") || val.contains(".")
                        ? "enter a valid email address"
                        : null,
                decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(),
                    icon: Icon(Icons.email),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1.0))),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _passwordVisible,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(),
                  icon: Icon(Icons.password),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.0)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      }),
                  Flexible(
                      child: GestureDetector(
                    onTap: null,
                    child: const Text("Remember Me?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    minWidth: 115,
                    height: 50,
                    elevation: 10,
                    onPressed: _loginUser,
                    child: const Text("Login"),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: _goLogin,
                child: const Text(
                  "Don't have an account. Register now",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: _goHome,
                child:
                    const Text("Go back Home", style: TextStyle(fontSize: 18)),
              )
            ]),
          ),
        ),
      ))),
    );
  }

  void _loginUser() {}

  void _goLogin() {
    Navigator.push(context,
        MaterialPageRoute(builder: (content) => const RegistrationScreen()));
  }

  void _goHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (content) => const MainScreen()));
  }
}
