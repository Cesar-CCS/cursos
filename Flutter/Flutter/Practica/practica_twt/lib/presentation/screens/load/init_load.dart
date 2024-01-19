import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_twt/widget/app_bar_tittle.dart';
import 'package:practica_twt/widget/direction_button.dart';

class InitLoad extends StatelessWidget {
  static const String name = 'init_load';

  const InitLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTitle(tittleBar: "Carga - Log"),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DirectionButton(
                  itsBack: true,
                  onPressed: () {
                    context.pop();
                  },
                  width: 158.85,
                  height: 50),
              DirectionButton(
                  itsBack: false, onPressed: () {}, width: 158.85, height: 50)
            ],
          )
        ],
      ),
    );
  }
}
