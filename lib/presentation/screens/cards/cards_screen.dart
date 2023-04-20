import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cardsscreen';
   
  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Cards Screen')
      ),
      body: Center(
         child: Text('Cards Screen'),
      ),
    );
  }
}