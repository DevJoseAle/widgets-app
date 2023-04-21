import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'uicontrolsscreen';
   
  const UiControlScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('UiControlScreen'),
      ),
    );
  }
}