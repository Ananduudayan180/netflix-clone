import 'package:flutter/material.dart';
import 'package:netflix_clone/core/app/app_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      home: AppScaffold(),
    );
  }
}
