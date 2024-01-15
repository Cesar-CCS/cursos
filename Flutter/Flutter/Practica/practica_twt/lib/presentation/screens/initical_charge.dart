import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:practica_twt/widget/app_bar_tittle.dart';

class InitialCharge extends StatelessWidget {
  const InitialCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle(tittleBar: "Inicio - Carga"),
    );
  }
}
