import 'package:go_router/go_router.dart';

import 'package:practica_twt/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: InitialCharge.name,
    builder: (context, state) => const InitialCharge(),
  ),
  GoRoute(
    path: '/load',
    name: InitLoad.name,
    builder: (context, state) => const InitLoad(),
  )
]);
