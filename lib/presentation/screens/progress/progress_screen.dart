import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progressScreen';
   
  const ProgressScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators'),
      ),
      body: _ProgressView()
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 4, backgroundColor: Colors.blue,),

          SizedBox(height: 30,),
          Text('Indicador de progreso Controlado (Lineal)'),
          SizedBox(height: 10,),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value*2)/100;
      }).takeWhile((value) => value <100 ),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 4 ,
                backgroundColor: Colors.yellow,
              ),
              SizedBox(width: 30,),
              Expanded(child: 
              LinearProgressIndicator(value: progressValue,)
              )
            ],
          ),
        );
      }
    );
  }
}