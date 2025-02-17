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
        AutoRoute(page: LetInRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(
          initial: false,
          page: MainRoute.page,
          // guards: <AutoRouteGuard>[AuthGuard(di.get<CheckLoggedInUseCase>())],
          children: <AutoRoute>[
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: MyCourseRoute.page),
            AutoRoute(page: InboxRoute.page),
            AutoRoute(page: TranscationRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: HomeSearchRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  List<PageRouteInfo> tabRoutes = [
    const HomeRoute(),
    const MyCourseRoute(),
    const InboxRoute(),
    const TranscationRoute(),
    const ProfileRoute(),
  ];
}
