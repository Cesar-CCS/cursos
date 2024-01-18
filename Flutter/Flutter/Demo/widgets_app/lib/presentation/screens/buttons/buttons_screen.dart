import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Buttons Screen",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: colors.primary,
        ),
        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          },
        ));
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {}, child: const Text("Elevated Button")),
          const ElevatedButton(
              onPressed: null, child: Text("Elevated Disable")),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Elevated Icon')),
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_rounded),
              label: const Text("Filled Icon")),
          OutlinedButton(onPressed: () {}, child: const Text("Outline")),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.workspaces_outline),
              label: const Text("Outline")),
          TextButton(onPressed: () {}, child: const Text('Text')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.wifi_tethering_off_outlined),
              label: const Text('TextIcon')),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.youtube_searched_for)),
          const CustomButtom()
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primaryColor,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
