import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:practica_twt/widget/app_bar_tittle.dart';

class InitialCharge extends StatelessWidget {
  const InitialCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitle(tittleBar: "Inicio - Carga"),
      body: Column(
        children: [
          TextButton(
              onPressed: () => _showDialog(context),
              child: const Text("Mostrar Dialogo"))
        ],
      ),
    );
  }

  _showDialog(BuildContext context) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
                title: const Text("Titulo del Dialogo"),
                content: const Text("Contenido del Dialogo"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.pop(context, "Cancel"),
                      child: const Text("Cancel")),
                  TextButton(
                    onPressed: () => Navigator.pop(context, "Ok"),
                    child: const Text("Ok"),
                  )
                ]));
  }
}
