import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_bloc_template/ui/home/bloc/home_event.dart';
import 'package:flutter_bloc_template/ui/home/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState());
}
