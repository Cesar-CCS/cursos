import 'package:flutter/material.dart';

class PogressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const PogressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pogress indicators'),
      ),
      body: const _PogressView(),
    );
  }
}

class _PogressView extends StatelessWidget {
  const _PogressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Text('Circular Pogress Indicator'),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        SizedBox(
          height: 30,
        ),
        Text('Circular Pogress Indicator controlado'),
        SizedBox(
          height: 10,
        ),
        _ControlledProgresIndicator(),
      ]),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
