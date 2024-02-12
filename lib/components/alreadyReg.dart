import 'package:flutter/material.dart';
import 'package:login_log/screens/login_Page.dart';
// ignore: unused_import
import 'package:login_log/screens/signup.dart';

class AlreadyRegistered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ALREADY REGISTERED? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text(
            "LOG IN!",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 135, 15, 15),
            ),
          ),
        ),
      ],
    );
  }
}
