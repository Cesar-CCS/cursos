import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialCharge extends StatelessWidget {
  const InitialCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('Carga - Buscar', style: TextStyle(color: Colors.red)),
              Padding(
                  padding: const EdgeInsets.only(left: 195),
                  child: SvgPicture.asset(
                    'assets/TWT.svg',
                    width: 62.5,
                    height: 62.5,
                  )),
              const Text(
                'TWT',
                textAlign: TextAlign.right,
              ),
            ]),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Color de la sombra
                  blurRadius: 5.0, // Radio de desenfoque
                  offset: Offset(0, 3), // Desplazamiento en la dirección y
                ),
              ],
            ),
            child: const Divider(
              color: Color.fromARGB(255, 175, 174, 174),
              height: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
