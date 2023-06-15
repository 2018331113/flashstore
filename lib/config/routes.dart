import 'package:go_router/go_router.dart';

import '../view/homepage.dart';

class Routes {
  static final routes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Homepage(),
      ),
    ],
  );
}
