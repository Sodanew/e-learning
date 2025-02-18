import 'package:flutter_bloc_template/base/bloc/base_bloc/base_state.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';

final class CourseDetailState extends BaseState {
  final CourseEntity course;

  CourseDetailState({required this.course});

  CourseDetailState copyWith({
    CourseEntity? course,
  }) {
    return CourseDetailState(
      course: course ?? this.course,
    );
  }

  @override
  List<Object?> get props => [course];
}
