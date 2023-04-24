

import 'package:flutter/material.dart';

class MenuItem{

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

 const  MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
    });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    subtitle: 'Varios Botones Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined),
  MenuItem(
    title: 'Tarjetas', 
    subtitle: 'Contenedor Estilizado', 
    link: '/cards', 
    icon: Icons.smart_button_outlined),
  MenuItem(
    title: 'Progress Indicator', 
    subtitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded),
  MenuItem(
    title: 'SnackBars y Dialogos', 
    subtitle: 'SnackBars y Dialogos', 
    link: '/snackbar', 
    icon: Icons.info_outline),
  MenuItem(
    title: 'AnimatedContainer', 
    subtitle: 'Contenedor Animated', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank),
  MenuItem(
    title: 'UI Controls', 
    subtitle: 'UI Controls + Tiles', 
    link: '/uicontrols', 
    icon: Icons.card_giftcard_sharp),
  // MenuItem(
  //   title: 'Tarjetas', 
  //   subtitle: 'Contenedor Estilizado', 
  //   link: '/cards', 
  //   icon: Icons.smart_button_outlined),
  // MenuItem(
  //   title: 'Tarjetas', 
  //   subtitle: 'Contenedor Estilizado', 
  //   link: '/cards', 
  //   icon: Icons.smart_button_outlined),
  // MenuItem(
  //   title: 'Tarjetas', 
  //   subtitle: 'Contenedor Estilizado', 
  //   link: '/cards', 
  //   icon: Icons.smart_button_outlined),

];