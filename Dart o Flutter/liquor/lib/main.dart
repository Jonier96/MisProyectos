import 'package:flutter/material.dart';
import 'package:liquor/screens/login.dart';
import 'package:liquor/screens/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LIQUOR',
      routes: {
        "login": (_) => const login(),
        "menu": (_) => const menu(),
      },
      initialRoute: "login",
    );
  }
}
