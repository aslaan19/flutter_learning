import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/loging.dart';
import 'package:flutter_learning/pages/signup.dart';
import 'package:flutter_learning/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Loging(),
        "/signup": (context) => const Signup(),
      },
    );
  }
}
