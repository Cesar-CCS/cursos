import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
        // backgroundColor: const Color(0xFF25AFF3),
        // toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              '${clickCounter == 1 ? 'Click' : 'Clicks'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(100), // Ajusta el valor según tu preferencia
        //   ),
        // ),
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        //backgroundColor: const Color(0xFF25AFF3),
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
