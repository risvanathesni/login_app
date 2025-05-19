import 'package:flutter/material.dart';
import 'package:login_app/services/auth%20services.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {

  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "ForgotPassword",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            controller: email,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email, color: Colors.pink),
              hintText: "type your email",
              hintStyle: TextStyle(color: Colors.red),
              filled: true,
              fillColor: Colors.green,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                sendlink(email: email.text, context: context);
              },
              child: Text("SEND LINK"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.lightGreen,
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
