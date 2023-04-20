import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
   
  const ButtonsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen')
      ),
      body: Center(
         child: Text('ButtonsScreen'),
      ),
    );
  }
}