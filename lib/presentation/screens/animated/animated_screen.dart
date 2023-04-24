import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {

  static const name = 'animatedScreen';
   
  const AnimatedScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),

      body: Center(
         child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Animar'),),
    );
  }
}