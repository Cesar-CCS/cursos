import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String tittle;
  final String subTittle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.tittle,
      required this.subTittle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      tittle: 'Botones',
      subTittle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      tittle: 'Tarjetas',
      subTittle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      tittle: 'PogressInicators',
      subTittle: 'Generales y Controlados',
      link: '/pogress',
      icon: Icons.refresh_rounded),
  MenuItem(
      tittle: 'Snackbars y dialogos',
      subTittle: 'Indicadores en Pantalla',
      link: '/snackbar',
      icon: Icons.info_outlined),
  MenuItem(
      tittle: 'Animated Container',
      subTittle: 'Statefull widget animado',
      link: '/animated',
      icon: Icons.check_box_outlined),
];
