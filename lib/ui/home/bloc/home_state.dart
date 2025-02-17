import 'package:flutter_bloc_template/base/bloc/base_bloc/base_state.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/mentor_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';

final class HomeState extends BaseState {
  final List<PromoteEntity> promotes;
  final List<CourseEntity> courses;
  final List<MentorEntity> mentors;

  HomeState({
    this.promotes = const [],
    this.courses = const [],
    this.mentors = const [],
  });

  HomeState copyWith({
    List<PromoteEntity>? promotes,
    List<CourseEntity>? courses,
    List<MentorEntity>? mentors,
  }) {
    return HomeState(
      promotes: promotes ?? this.promotes,
      courses: courses ?? this.courses,
      mentors: mentors ?? this.mentors,
    );
  }

  @override
  List<Object?> get props => [
        promotes,
        courses,
        mentors,
      ];
}
