import 'package:flutter/material.dart';
import 'package:widgets_master_app/config/theme/apptheme.dart';
import 'package:widgets_master_app/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const HomeScreen(),
    );
  }
}