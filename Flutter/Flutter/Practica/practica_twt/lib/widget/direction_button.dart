import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final Map<String, IconData> iconMap = {
  'back': Icons.arrow_back_ios_new_outlined,
  'next': Icons.arrow_forward_ios_rounded
};

final Map<String, String> textButton = {'BACK': 'ATRAS', 'NEXT': 'SIGUIENTE'};

class DirectionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool itsBack;
  final double width;
  final double height;

  const DirectionButton(
      {super.key,
      required this.itsBack,
      this.onPressed,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (onPressed != null)
          ? onPressed
          : () {
              context.pop();
            },
      style: ElevatedButton.styleFrom(
        //padding: const EdgeInsets.only(left: 10, right: 35),
        backgroundColor: Colors.red,
        fixedSize: const Size(158.85, 25),
      ),
      child: itsBack ? const _RowBack() : const _RowNext(),
    );
  }
}

class _RowBack extends StatelessWidget {
  const _RowBack();

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Icon(
        iconMap['back'],
        color: Colors.white,
      ),
      const SizedBox(
        width: 20,
      ),
      Align(
          alignment: Alignment.center,
          child: Text(
            textButton['BACK']!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
    ]);
  }
}

class _RowNext extends StatelessWidget {
  const _RowNext();

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Align(
          alignment: Alignment.center,
          child: Text(
            textButton['NEXT']!,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
      const SizedBox(
        width: 10,
      ),
      Icon(
        iconMap['next'],
        color: Colors.white,
      ),
    ]);
  }
}
