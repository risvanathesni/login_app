import 'package:flutter/material.dart';
import 'package:login_app/forgetpassword.dart';
import 'package:login_app/services/auth%20services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "login",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            controller: emailcontroller,

            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined, color: Colors.red),
              hintText: "Type your email......",
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.yellow,
            ),
          ),
          SizedBox(height: 6),
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password, color: Colors.blue),
              hintText: "Type your password.....",
              hintStyle: TextStyle(color: Colors.pink),
              filled: true,
              fillColor: Colors.yellow,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Forgetpassword()),
              );
            },
            child: Text("ForegetPassword"),
          ),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                login(
                  email: emailcontroller.text,
                  password: passwordcontroller.text,
                  context: context,
                );
              },
              child: Text("login"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.pink,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
