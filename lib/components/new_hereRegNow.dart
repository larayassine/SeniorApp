import 'package:flutter/material.dart';
import 'package:login_log/screens/signup.dart';

class newHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "NEW HERE? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          child: Text(
            "REGISTER NOW!",
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
