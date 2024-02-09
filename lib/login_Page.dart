import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_Pic.png',
                width: 400,
                height: 400,
              ),
              _loginText(),
              const SizedBox(height: 5),
              _inputField(
                "ENTER UNIVERSITY EMAIL",
                'assets/icons/email.png',
                usernameController,
              ),
              const SizedBox(height: 10),
              _inputField(
                "ENTER PASSWORD",
                'assets/icons/password.png',
                passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 5),
              _extraText(),
              const SizedBox(height: 20),
              _loginBtn(),
              const SizedBox(height: 60),
              _extraText2(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _loginText() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "LOG IN",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Color.fromARGB(255, 135, 15, 15),
        ),
      ),
    );
  }

  Widget _inputField(
      String hintText, String iconPath, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Color.fromARGB(255, 135, 15, 15)),
    );

    return TextField(
      style: const TextStyle(color: Colors.red),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(140, 21, 21, 21),
        ),
        enabledBorder: border,
        focusedBorder: border,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
              left: 11, right: 12.0), // Adjust the padding as desired
          child: Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
        ),
      ),
      obscureText: isPassword,
    );
  }

  Widget _extraText() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        "FORGOT PASSWORD?",
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 135, 15, 15),
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username:" + usernameController.text);
        debugPrint("Password:" + passwordController.text);
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "LOG IN",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 135, 15, 15),
        padding: const EdgeInsets.symmetric(
            vertical: 16), // ben el log in wel border
      ),
    );
  }

  Widget _extraText2() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "NEW HERE? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        Text(
          "REGISTER NOW!",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 135, 15, 15),
          ),
        ),
      ],
    );
  }
}
