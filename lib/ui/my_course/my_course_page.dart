import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../base/shared_view/common_app_bar.dart';
import '../../base/shared_view/common_scaffold.dart';

@RoutePage()
class MyCoursePage extends StatefulWidget {
  const MyCoursePage({super.key});

  @override
  State<MyCoursePage> createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        text: 'My Course',
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        leadingIcon: LeadingIcon.none,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
