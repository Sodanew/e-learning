import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc_template/navigation/router.gr.dart';
import 'package:injectable/injectable.dart';

@AutoRouterConfig()
@lazySingleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: MainRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
}
