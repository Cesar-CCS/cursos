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
];