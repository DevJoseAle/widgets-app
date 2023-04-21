import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {

  static const name = 'inifinitescrollscreen';
   
  const InfiniteScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
         child: Text('InfiniteScrollScreen'),
      ),
    );
  }
}