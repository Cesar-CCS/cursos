import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarTitle extends StatelessWidget implements PreferredSizeWidget {
  final String tittleBar;

  const AppBarTitle({
    super.key,
    required this.tittleBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        tittleBar,
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      actions: [
        const Text(
          "TWT",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SvgPicture.asset(
          'assets/TWT.svg',
          width: 70,
          height: 70,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
