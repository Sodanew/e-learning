import 'package:flutter_bloc_template/base/bloc/base_bloc/base_state.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/lesson_entity.dart';
import 'package:flutter_bloc_template/domain/entity/enum/enum.dart';

final class CourseDetailState extends BaseState {
  final CourseEntity course;
  final List<LessonEntity> lessons;
  final CourseTab tab;

  CourseDetailState({
    required this.course,
    required this.tab,
    this.lessons = const [],
  });

  CourseDetailState copyWith({
    CourseEntity? course,
    List<LessonEntity>? lessons,
    CourseTab? tab,
  }) {
    return CourseDetailState(
      course: course ?? this.course,
      lessons: lessons ?? this.lessons,
      tab: tab ?? this.tab,
    );
  }

  @override
  List<Object?> get props => [
        course,
        lessons,
        tab,
      ];
}
