import 'package:flutter/material.dart';

class DirectionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? side;
  final IconData useIcon;
  final String useText;
  final double width;
  final double height;

  const DirectionButton(
      {super.key,
      this.onPressed,
      this.side,
      required this.useIcon,
      required this.useText,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        useIcon,
        color: Colors.white,
      ),
      label: Text(
        useText,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          fixedSize: Size(width, height),
          padding: EdgeInsets.symmetric(horizontal: side ?? 16)),
    );
  }
}
