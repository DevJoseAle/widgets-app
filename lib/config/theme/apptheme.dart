import 'package:flutter/material.dart';

const colorList = <Color>[

  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.grey,
  
];



class AppTheme{


  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    :assert(
      selectedColor >= 0 && selectedColor < colorList.length -1,
      'Selecciona otro color'
    );


    ThemeData getTheme () => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: true,
      )
    );

}