import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/lesson_entity.dart';
import 'package:flutter_bloc_template/ui/main/main_page.dart';
import 'package:gap/gap.dart';

import '../../../../../../base/constants/ui/dimens.dart';
import '../../../../../../resource/generated/assets.gen.dart';

class CourseLessonsTabWidget extends StatelessWidget {
  const CourseLessonsTabWidget({super.key, required this.lessons, required this.course});

  final List<LessonEntity> lessons;
  final CourseEntity course;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.current.scaffoldColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge).copyWith(top: Dimens.paddingVerticalLarge),
        children: [
          ...lessons.mapIndexed<Widget>((i, e) => _item(i, e)),
        ],
      ),
    );
  }

  Widget _item(int index, LessonEntity item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Dimens.paddingVertical, horizontal: 20),
      margin: const EdgeInsets.only(bottom: Dimens.paddingVerticalLarge),
      decoration: BoxDecoration(
          color: AppColors.current.otherWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(offset: const Offset(0, 2), blurRadius: 16, color: const Color(0xff04060F).withOpacity(.05))]),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.current.transparentBlue,
                    ),
                    child: Text('$index', style: AppTextStyles.h6Bold.withPrimaryColor()),
                  ),
                  const Gap(Dimens.paddingHorizontal),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title, style: AppTextStyles.h6Bold, maxLines: 2, overflow: TextOverflow.ellipsis),
                        const Gap(6),
                        Text('${item.duration} mins', style: AppTextStyles.bodyMedium)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(Dimens.paddingHorizontal),
            Assets.icons.lockCurved.svg(),
          ],
        ),
      ),
    );
  }
}
