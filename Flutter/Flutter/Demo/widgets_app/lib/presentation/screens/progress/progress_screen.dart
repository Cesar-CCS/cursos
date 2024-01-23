import 'package:flutter/material.dart';

class PogressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const PogressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PogressIndicatos'),
      ),
      body: const _PogressView(),
    );
  }
}

class _PogressView extends StatelessWidget {
  const _PogressView();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: const Column(children: [
        SizedBox(
          height: 30,
        ),
        Text('Circular Pogress Indicator'),
        SizedBox(
          height: 10,
        ),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        SizedBox(
          height: 20,
        ),
        Text('Circular  y Linear Pogress Indicator Controlado'),
        SizedBox(
          height: 10,
        ),
        _ControlledPogressIndicator()
      ]),
    );
  }
}

class _ControlledPogressIndicator extends StatelessWidget {
  const _ControlledPogressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final pogressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: pogressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(child: LinearProgressIndicator(value: pogressValue))
              ],
            ),
          );
        });
  }
}
