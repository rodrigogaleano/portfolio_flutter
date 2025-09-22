import 'package:go_router/go_router.dart';

import '../ui/home/home_view.dart';
import '../ui/splash/splash_view.dart';
import 'routes.dart';

final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (_, __) => const SplashView(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (_, __) => const HomeView(),
      ),
    ],
  );
}
