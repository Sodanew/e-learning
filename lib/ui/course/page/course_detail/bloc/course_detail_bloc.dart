
import 'package:flutter_bloc_template/base/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_event.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_state.dart';
import 'package:injectable/injectable.dart';

@injectable
final class CourseDetailBloc extends BaseBloc<CourseDetailEvent, CourseDetailState> {
  CourseDetailBloc() : super(CourseDetailState());
}