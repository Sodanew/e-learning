import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/mentor_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';
import 'package:flutter_bloc_template/domain/use_case/course/fetch_most_popular_course_use_case.dart';
import 'package:flutter_bloc_template/domain/use_case/course/fetch_promote_list_use_case.dart';
import 'package:flutter_bloc_template/domain/use_case/course/fetch_top_mentor_list_use_case.dart';
import 'package:flutter_bloc_template/ui/home/bloc/home_event.dart';
import 'package:flutter_bloc_template/ui/home/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(
    this._fetchPromoteListUseCase,
    this._fetchMostPopularCourseUseCase,
    this._fetchTopMentorListUseCase,
  ) : super(HomeState()) {
    on<HomeDataRequestedEvent>(_onHomeDataRequestedEvent);
  }

  final FetchPromoteListUseCase _fetchPromoteListUseCase;
  final FetchMostPopularCourseUseCase _fetchMostPopularCourseUseCase;
  final FetchTopMentorListUseCase _fetchTopMentorListUseCase;

  Future<void> _onHomeDataRequestedEvent(HomeDataRequestedEvent event, Emitter<HomeState> emit) async {
    return runAction(
      onAction: () async {
        final apiCalls = [
          _fetchPromoteListUseCase.invoke(null),
          _fetchTopMentorListUseCase.invoke(null),
          _fetchMostPopularCourseUseCase.invoke(null),
        ];
        final result = await Future.wait(apiCalls);

        final emitters = [
          (data) => emit(state.copyWith(promotes: data as List<PromoteEntity>)),
          (data) => emit(state.copyWith(mentors: data as List<MentorEntity>)),
          (data) => emit(state.copyWith(courses: data as List<CourseEntity>)),
        ];

        for (int i = 0; i < result.length; i++) {
          result[i].when(success: emitters[i]);
        }
      },
    );
  }
}
