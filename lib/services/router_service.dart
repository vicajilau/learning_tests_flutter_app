import 'package:go_router/go_router.dart';

import '../screens/favorites_page.dart';
import '../screens/home_page.dart';

class RouterService {
  static RouterService shared = RouterService();

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) {
          return const HomePage();
        },
        routes: [
          GoRoute(
            path: FavoritesPage.routeName,
            builder: (context, state) {
              return const FavoritesPage();
            },
          ),
        ],
      ),
    ],
  );

  GoRouter getRouter() => _router;
}
