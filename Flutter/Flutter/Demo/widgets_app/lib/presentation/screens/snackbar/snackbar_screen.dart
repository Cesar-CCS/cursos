import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¡Estas Seguro?'),
        content: const Text(
            'Ut ad laborum ad eiusmod ullamco incididunt nisi excepteur. Reprehenderit ea ea cupidatat ad. Id duis ad incididunt est in eu ea est adipisicing Lorem in excepteur incididunt. Reprehenderit duis deserunt dolore consectetur laborum aute consequat culpa esse non excepteur. Cupidatat consectetur laborum voluptate aliqua consectetur elit Lorem duis cillum. Occaecat nulla magna excepteur eu qui esse tempor qui esse proident ut pariatur.'),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Cancelar')),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Aceptar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Non aliquip aute nulla cupidatat esse officia in duis laboris. Aliqua sint eiusmod laboris elit sint et eiusmod cillum reprehenderit ex nostrud minim officia. Voluptate tempor duis proident ex do dolore Lorem voluptate tempor laboris enim ipsum ipsum. Esse incididunt ad laboris dolor consequat amet aliqua sunt elit labore do commodo amet. Anim irure eiusmod Lorem non est elit nostrud culpa sunt. Qui cillum sint aliqua in mollit ad laborum consectetur officia voluptate ad.')
                ]);
              },
              child: const Text('Licencias Usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
