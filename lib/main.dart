import 'package:flutter/material.dart';
import 'package:widgets_master_app/config/router/app_router.dart';
import 'package:widgets_master_app/config/theme/apptheme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(selectedColor: 3).getTheme(),
      
      
    );
  }
}