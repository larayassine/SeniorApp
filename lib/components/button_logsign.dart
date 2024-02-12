import 'package:flutter/material.dart';

class LoginSignupButton extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final String buttonText;

  const LoginSignupButton({
    required this.usernameController,
    required this.passwordController,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username: " + usernameController.text);
        debugPrint("Password: " + passwordController.text);
      },
      child: SizedBox(
        width: double.infinity,
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 135, 15, 15),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
      ),
    );
  }
}
