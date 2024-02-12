import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_log/screens/login_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruccab',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SafeArea(
        child: Container(
          width: double.infinity, // Take the full width of the screen
          height: double.infinity, // Take the full height of the screen
          child: LoginPage(),
        ),
      ),
    );
  }
}



