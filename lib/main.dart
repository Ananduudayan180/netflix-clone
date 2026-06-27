import 'package:flutter/material.dart';
import 'package:netflix_clone/core/app/app_scaffold.dart';
import 'package:netflix_clone/core/config/api_service.dart';
import 'package:netflix_clone/core/theme/app_theme.dart';

void main() {
  ApiService.setupDio(); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      theme: appTheme,
      home: AppScaffold(),
    );
  }
}
