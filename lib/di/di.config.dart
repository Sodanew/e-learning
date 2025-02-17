// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../base/bloc/app_bloc/app_bloc.dart' as _i334;
import '../base/bloc/common_bloc/common_bloc.dart' as _i63;
import '../base/navigator/app_navigator.dart' as _i414;
import '../data/data_source/local/app_shared_preferences.dart' as _i906;
import '../data/data_source/remote/service/auth_service.dart' as _i762;
import '../data/data_source/remote/service/course_service.dart' as _i417;
import '../data/network/interceptors/access_token_interceptor.dart' as _i355;
import '../data/network/interceptors/refresh_token_interceptor.dart' as _i746;
import '../data/repo_impl/auth_repo_impl.dart' as _i561;
import '../domain/repository/auth_repo.dart' as _i741;
import '../domain/use_case/auth/login_use_case.dart' as _i924;
import '../domain/use_case/auth/logout_use_case.dart' as _i92;
import '../domain/use_case/config/load_app_config_use_case.dart' as _i839;
import '../navigation/app_navigator_impl.dart' as _i285;
import '../navigation/router.dart' as _i502;
import '../ui/login/bloc/login_bloc.dart' as _i919;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i839.LoadAppConfigUseCase>(() => _i839.LoadAppConfigUseCase());
    gh.factory<_i92.LogoutUseCase>(() => _i92.LogoutUseCase());
    gh.factory<_i919.LoginBloc>(() => _i919.LoginBloc());
    gh.factory<_i924.LoginUseCase>(() => _i924.LoginUseCase());
    gh.singleton<_i334.AppBloc>(() => _i334.AppBloc());
    gh.lazySingleton<_i502.AppRouter>(() => _i502.AppRouter());
    gh.lazySingleton<_i762.AuthService>(
        () => _i762.AuthService(gh<_i361.Dio>()));
    gh.lazySingleton<_i417.CourseService>(
        () => _i417.CourseService(gh<_i361.Dio>()));
    gh.lazySingleton<_i355.AccessTokenInterceptor>(
        () => _i355.AccessTokenInterceptor(gh<_i906.AppSharedPreferences>()));
    gh.factory<_i63.CommonBloc>(
        () => _i63.CommonBloc(gh<_i92.LogoutUseCase>()));
    gh.lazySingleton<_i741.AuthRepo>(
        () => _i561.AuthRepoImpl(gh<_i762.AuthService>()));
    gh.lazySingleton<_i414.AppNavigator>(
        () => _i285.AppNavigatorImpl(gh<_i502.AppRouter>()));
    gh.lazySingleton<_i746.RefreshTokenInterceptor>(
        () => _i746.RefreshTokenInterceptor(
              gh<_i906.AppSharedPreferences>(),
              gh<_i361.Dio>(),
            ));
    return this;
  }
}
