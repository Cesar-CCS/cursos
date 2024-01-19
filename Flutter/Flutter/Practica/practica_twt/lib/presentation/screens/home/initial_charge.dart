import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_twt/presentation/screens/screens.dart';
//import 'package:go_router/go_router.dart';
import 'package:practica_twt/widget/app_bar_tittle.dart';
import 'package:practica_twt/widget/direction_button.dart';

class InitialCharge extends StatelessWidget {
  static const String name = 'initial_charge';

  const InitialCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitle(tittleBar: "Inicio - Carga"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Presiona buscar para \niniciar la carga:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
                wordSpacing: 2,
              ),
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(2),
            ),
            Padding(
                padding: const EdgeInsets.all(50),
                child: DirectionButton(
                  onPressed: () {
                    context.pushNamed(InitLoad.name);
                  },
                  useIcon: Icons.play_arrow_rounded,
                  useText: 'Iniciar Carga',
                  width: 300,
                  height: 50,
                )),
            const Icon(
              Icons.touch_app_outlined,
              size: 150,
            )
          ],
        ),
      ),
    );
  }
}
