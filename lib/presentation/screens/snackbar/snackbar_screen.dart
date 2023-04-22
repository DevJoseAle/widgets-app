import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

 static const name = 'snackbarscreen';

 void showCustomSnackBar (BuildContext context){

  ScaffoldMessenger.of(context).clearSnackBars();
  final snackbar = SnackBar(
      content: Text('Desde Snackbar'),
      action: SnackBarAction(label: 'OK', onPressed: (){}), );

   ScaffoldMessenger.of(context).showSnackBar(snackbar);

 }

 void openDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Dialogo Custom'),
          elevation: 0,
          content: Text('Dialogo que irá en el centro del DialogWidget.'),

        );
      },
    );
 }

  const SnackbarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Snackbar y Dialogs'),
      ),
      body:Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  Text('Texto que va dentro del Dialogo'),
                  Icon(Icons.check),
                ]
                );

            }, child: Text('Show Dialogs')),
            FilledButton.tonal(onPressed: () => openDialog(context), 
            child: Text('Used License')),
          ],
        ),
      ), 
      
      
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
  
        icon: Icon(Icons.remove_red_eye_outlined), 
        label: Text('Mostrar SnackBar')),
    );
  }
}