import 'package:flutter/material.dart';
import 'package:login_app/services/auth%20services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController namacontroller = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CREATE ACCOUNT",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),

            // Username field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namacontroller,
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.person, color: Colors.red),
                  hintText: "USERNAME",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // Email field (added here)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.red),
                  hintText: "EMAIL",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // Password field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.red),
                  hintText: "PASSWORD",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // Confirm password field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: confirmpassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.red),
                  hintText: "CONFIRM PASSWORD",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {signup(username: namacontroller.text, email: email.text, password: password.text, confirmpassword: confirmpassword.text, context: context);},
              child: Text("REGISTER"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blueGrey,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ));
  }
}
