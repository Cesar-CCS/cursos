import 'package:flutter/material.dart';

class ScannButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double width;
  final double height;

  const ScannButton({
    super.key,
    this.onPressed,
    required this.label,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.qr_code_scanner_outlined,
        color: Colors.white,
        size: 45,
      ),
      label: Text(
        label,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, fixedSize: Size(width, height)),
    );
  }
}
