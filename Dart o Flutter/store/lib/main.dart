import 'package:flutter/material.dart';
import 'package:store/screens/homeScream.dart';
import 'package:store/screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shop tech',
      routes: {
        "login": (_) => login(),
        "Home": (_) => homeScream(),
      },
      initialRoute: "login",
    );
  }
}
