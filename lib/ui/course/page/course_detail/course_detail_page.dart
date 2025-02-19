import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/shared_view/common_base_state.dart';
import 'package:flutter_bloc_template/base/shared_view/common_bottom_navigator_bar_background.dart';
import 'package:flutter_bloc_template/base/shared_view/common_button.dart';
import 'package:flutter_bloc_template/base/shared_view/common_image_view.dart';
import 'package:flutter_bloc_template/base/shared_view/common_scaffold.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/lesson_entity.dart';
import 'package:flutter_bloc_template/domain/entity/enum/enum.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_bloc.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_event.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/bloc/course_detail_state.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/components/course_information_widget.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/components/tabs/course_about_tab_widget.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/components/tabs/course_lessons_tab_widget.dart';
import 'package:flutter_bloc_template/ui/course/page/course_detail/components/tabs/course_reviews_tab_widget.dart';
import 'package:gap/gap.dart';

@RoutePage()
class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key, @PathParam('id') required this.id});

  final String id;

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends CommonBaseState<CourseDetailPage, CourseDetailBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(FetchCourseDetailEvent(courseId: widget.id));
  }

  @override
  Widget buildPage(BuildContext context) {
    return DefaultTabController(
      length: CourseTab.values.length,
      child: BlocBuilder<CourseDetailBloc, CourseDetailState>(
        buildWhen: (prev, curr) => prev.course != curr.course,
        builder: (context, state) {
          return CommonScaffold(
            body: Stack(
              children: [
                NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 300,
                          width: MediaQuery.sizeOf(context).width,
                          child: CommonImageView(imageUrl: state.course.image),
                        ),
                      ),
                      SliverToBoxAdapter(child: _information(state.course)),
                      SliverToBoxAdapter(
                        child: TabBar(
                          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
                          tabs: CourseTab.values.map<Widget>((tab) => Tab(text: tab.fromTitle())).toList(),
                          onTap: (i) => bloc.add(CourseTabChangedEvent(tab: CourseTab.values[i])),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(children: [
                    CourseAboutTabWidget(item: state.course),
                    BlocSelector<CourseDetailBloc, CourseDetailState, List<LessonEntity>>(
                      selector: (state) => state.lessons,
                      builder: (_, lessons) {
                        return CourseLessonsTabWidget(lessons: lessons, course: state.course);
                      },
                    ),
                    CourseReviewsTabWidget(),
                  ]),
                ),
                const SafeArea(child: BackButton()),
              ],
            ),
            bottomNavigationBar: CommonBottomNavigatorBarBackground(
              visibleBorder: false,
              child: CommonButton(
                onPressed: () {},
                title: 'Enroll Course - ${state.course.displayPrice()}',
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _information(CourseEntity item) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.paddingHorizontalLarge).copyWith(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CourseInformationWidget(item: item),
          const Gap(Dimens.paddingVerticalLarge),
          Divider(height: 1, color: AppColors.current.greyscale200),
        ],
      ),
    );
  }
}
