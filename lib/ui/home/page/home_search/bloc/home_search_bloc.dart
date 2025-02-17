import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_bloc_template/ui/home/page/home_search/bloc/home_search_event.dart';
import 'package:flutter_bloc_template/ui/home/page/home_search/bloc/home_search_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeSearchBloc extends BaseBloc<HomeSearchEvent, HomeSearchState> {
  HomeSearchBloc() : super(HomeSearchState()) {
    on<HomeSearchDataRequestEvent>(_onHomeSearchDataRequestEvent);
  }

  Future<void> _onHomeSearchDataRequestEvent(HomeSearchDataRequestEvent event, Emitter<HomeSearchState> emit) async {}
}
