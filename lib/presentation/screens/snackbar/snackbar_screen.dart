import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
   
   static const name = 'snackbarscreen';

  const SnackbarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('SnackbarScreen'),
      ),
    );
  }
}