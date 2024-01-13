import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Functions')),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
        // leading: IconButton(
        //   icon: const Icon(Icons.refresh_rounded),
        //   onPressed: () {
        //     clickCounter = 0;
        //   },
        // ),
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
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        CustomButtom(
          icon: Icons.refresh_rounded,
          onPressed: () {
            clickCounter = 0;
            setState(() {});
          },
        ),
        const SizedBox(height: 10),
        CustomButtom(
          icon: Icons.exposure_minus_1_outlined,
          onPressed: () {
            setState(() {
              if (clickCounter == 0) return;
              clickCounter--;
            });
          },
        ),
        const SizedBox(height: 10),
        CustomButtom(
          icon: Icons.plus_one,
          onPressed: () {
            setState(() {
              clickCounter++;
            });
          },
        )
      ]),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      elevation: 10,
      backgroundColor: Colors.deepPurpleAccent.shade100,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
