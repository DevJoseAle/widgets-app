import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {

  static const name = 'apptutorialscreen';
   
  const AppTutorialScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('AppTutorialScreen'),
      ),
    );
  }
}