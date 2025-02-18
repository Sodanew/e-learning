import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:gap/gap.dart';

class CourseAboutTabWidget extends StatelessWidget {
  const CourseAboutTabWidget({super.key, required this.item});

  final CourseEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.paddingHorizontalLarge),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Course', style: AppTextStyles.h5Bold),
          const Gap(12),
          Text(item.about, style: AppTextStyles.bodyMediumRegular),
          const Gap(Dimens.paddingVerticalLarge),
          Text('Tools', style: AppTextStyles.h5Bold),
        ],
      ),
    );
  }
}
