import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc_template/base/navigator/app_navigator.dart';
import 'package:flutter_bloc_template/navigation/router.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl implements AppNavigator {
  final AppRouter _appRouter;

  AppNavigatorImpl(this._appRouter);

  TabsRouter? _tabsRouter;

  set tabsRouter(TabsRouter tab) {
    _tabsRouter = tab;
  }
}
