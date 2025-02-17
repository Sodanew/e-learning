import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/shared_view/common_base_state.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_bloc.dart';

@RoutePage()
class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key, @PathParam('id') required this.id});

  final String id;

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends CommonBaseState<CourseDetailPage, CourseDetailBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return const Placeholder();
  }
}
