import 'package:flutter/material.dart';
import 'package:practica_twt/presentation/screens/initical_charge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: InitialCharge());
  }
}
