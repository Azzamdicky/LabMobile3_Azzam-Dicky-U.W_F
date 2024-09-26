import 'package:flutter/material.dart';
import 'package:pert3/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Menu',
      home: LoginPage(),
    );
  }
}
