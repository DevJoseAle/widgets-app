import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progressScreen';
   
  const ProgressScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('ProgressScreen'),
      ),
    );
  }
}