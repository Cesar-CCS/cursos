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
  MenuItem(
      tittle: 'UI CONTROLS + titles',
      subTittle: 'Una serie de controles en flutter',
      link: '/ui_controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      tittle: 'introduccion a la Aplicacion',
      subTittle: 'Tutorial Introductorio',
      link: '/app_tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      tittle: 'Scroll Infinito',
      subTittle: 'Scroll que nunca acaba',
      link: '/infinite_scroll',
      icon: Icons.all_inclusive),
];
