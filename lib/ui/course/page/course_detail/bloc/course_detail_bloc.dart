import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/use_case/course/fetch_course_detail_use_case.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_event.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_state.dart';
import 'package:injectable/injectable.dart';

@injectable
final class CourseDetailBloc extends BaseBloc<CourseDetailEvent, CourseDetailState> {
  CourseDetailBloc(this._fetchCourseDetailUseCase)
      : super(CourseDetailState(
          course: CourseEntity.defaultValue(),
        )) {
    on<FetchCourseDetailEvent>(_onFetchCourseDetailEvent);
  }

  final FetchCourseDetailUseCase _fetchCourseDetailUseCase;

  FutureOr<void> _onFetchCourseDetailEvent(FetchCourseDetailEvent event, Emitter<CourseDetailState> emit) {
    return runAction(
      onAction: () async {
        final result = await _fetchCourseDetailUseCase.invoke(CourseDetailRequest(id: event.courseId));
        result.when(
          ok: (data) {
            emit(state.copyWith(course: data));
          },
        );
      },
    );
  }
}
