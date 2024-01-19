import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_twt/presentation/screens/screens.dart';
//import 'package:flutter_svg/flutter_svg.dart';
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
                  onPressed: () {
                    context.pop();
                  },
                  useIcon: Icons.arrow_back_ios_new_outlined,
                  useText: 'ATRAS',
                  width: 158.85,
                  height: 25),
              DirectionButton(
                  onPressed: () {},
                  useIcon: Icons.arrow_forward_ios_rounded,
                  useText: 'SIGUIENTE',
                  width: 158.85,
                  height: 25)
            ],
          )
        ],
      ),
    );
  }
}
