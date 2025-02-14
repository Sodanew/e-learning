import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/bloc/app_bloc/app_event.dart';
import 'package:flutter_bloc_template/base/bloc/app_bloc/app_state.dart';
import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<AppStartedEvent>(_onAppStartedEvent);
    on<UserLoggedInEvent>(_onUserLoggedInEvent);
    on<UserLoggedOutEvent>(_onUserLoggedOutEvent);
    on<LoadAppConfigEvent>(_onLoadAppConfigEvent);
    on<ConnectivityChangedEvent>(_onConnectivityChangedEvent);
    on<ThemeChangedEvent>(_onThemeChangedEvent);
    on<LanguageChangedEvent>(_onLanguageChangedEvent);
  }

  Future<void> _onAppStartedEvent(AppStartedEvent event, Emitter<AppState> emit) async {
    return runAction(
      onAction: () async {},
      handleLoading: false,
    );
  }

  FutureOr<void> _onUserLoggedInEvent(UserLoggedInEvent event, Emitter<AppState> emit) {}

  FutureOr<void> _onUserLoggedOutEvent(UserLoggedOutEvent event, Emitter<AppState> emit) {}

  FutureOr<void> _onLoadAppConfigEvent(LoadAppConfigEvent event, Emitter<AppState> emit) {}

  FutureOr<void> _onConnectivityChangedEvent(ConnectivityChangedEvent event, Emitter<AppState> emit) {}

  FutureOr<void> _onThemeChangedEvent(ThemeChangedEvent event, Emitter<AppState> emit) {}

  FutureOr<void> _onLanguageChangedEvent(LanguageChangedEvent event, Emitter<AppState> emit) {}
}
