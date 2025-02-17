// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter_bloc_template/ui/course/page/course_detail/course_detail_page.dart'
    as _i1;
import 'package:flutter_bloc_template/ui/course/page/course_list/course_list_page.dart'
    as _i2;
import 'package:flutter_bloc_template/ui/home/home_page.dart' as _i3;
import 'package:flutter_bloc_template/ui/home/page/home_search/home_search_page.dart'
    as _i4;
import 'package:flutter_bloc_template/ui/inbox/inbox_page.dart' as _i5;
import 'package:flutter_bloc_template/ui/let_in/let_in_page.dart' as _i6;
import 'package:flutter_bloc_template/ui/login/login_page.dart' as _i7;
import 'package:flutter_bloc_template/ui/main/main_page.dart' as _i8;
import 'package:flutter_bloc_template/ui/my_course/my_course_page.dart' as _i9;
import 'package:flutter_bloc_template/ui/onboarding/onboarding_page.dart'
    as _i10;
import 'package:flutter_bloc_template/ui/profile/profile_page.dart' as _i11;
import 'package:flutter_bloc_template/ui/sign_up/sign_up_page.dart' as _i12;
import 'package:flutter_bloc_template/ui/splash/splash_page.dart' as _i13;
import 'package:flutter_bloc_template/ui/transaction/transaction_page.dart'
    as _i14;

/// generated route for
/// [_i1.CourseDetailPage]
class CourseDetailRoute extends _i15.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    _i16.Key? key,
    required String id,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          CourseDetailRoute.name,
          args: CourseDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CourseDetailRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CourseDetailRouteArgs>(
          orElse: () => CourseDetailRouteArgs(id: pathParams.getString('id')));
      return _i1.CourseDetailPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i16.Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.CourseListPage]
class CourseListRoute extends _i15.PageRouteInfo<void> {
  const CourseListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          CourseListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CourseListRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i2.CourseListPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.HomeSearchPage]
class HomeSearchRoute extends _i15.PageRouteInfo<void> {
  const HomeSearchRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeSearchRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeSearchPage();
    },
  );
}

/// generated route for
/// [_i5.InboxPage]
class InboxRoute extends _i15.PageRouteInfo<void> {
  const InboxRoute({List<_i15.PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.InboxPage();
    },
  );
}

/// generated route for
/// [_i6.LetInPage]
class LetInRoute extends _i15.PageRouteInfo<void> {
  const LetInRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LetInRoute.name,
          initialChildren: children,
        );

  static const String name = 'LetInRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.LetInPage();
    },
  );
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginPage();
    },
  );
}

/// generated route for
/// [_i8.MainPage]
class MainRoute extends _i15.PageRouteInfo<void> {
  const MainRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.MainPage();
    },
  );
}

/// generated route for
/// [_i9.MyCoursePage]
class MyCourseRoute extends _i15.PageRouteInfo<void> {
  const MyCourseRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCourseRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.MyCoursePage();
    },
  );
}

/// generated route for
/// [_i10.OnboardingPage]
class OnboardingRoute extends _i15.PageRouteInfo<void> {
  const OnboardingRoute({List<_i15.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.ProfilePage();
    },
  );
}

/// generated route for
/// [_i12.SignUpPage]
class SignUpRoute extends _i15.PageRouteInfo<void> {
  const SignUpRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.SignUpPage();
    },
  );
}

/// generated route for
/// [_i13.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashPage();
    },
  );
}

/// generated route for
/// [_i14.TransactionPage]
class TransactionRoute extends _i15.PageRouteInfo<void> {
  const TransactionRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TransactionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.TransactionPage();
    },
  );
}
