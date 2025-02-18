import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/ui/widgets/course/course_rating_widget.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../base/constants/ui/app_colors.dart';
import '../../../base/constants/ui/app_text_styles.dart';
import '../../../base/constants/ui/dimens.dart';
import '../../../base/shared_view/common_image_view.dart';
import '../../../resource/generated/assets.gen.dart';
import 'course_category_name_widget.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({super.key, required this.item, this.onTap});

  final CourseEntity item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: Dimens.paddingVertical),
        decoration: BoxDecoration(
          color: AppColors.current.otherWhite,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff04060F).withOpacity(.05),
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CommonImageView(
                imageUrl: item.image,
                width: 120,
                height: 120,
                radius: 20,
              ),
              const Gap(Dimens.paddingHorizontal),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CourseCategoryNameWidget(name: item.category),
                        Assets.icons.bookmarkCurved
                            .svg(width: 24, colorFilter: ColorFilter.mode(AppColors.current.primary500, BlendMode.srcIn))
                      ],
                    ),
                    const Gap(12),
                    Text(item.title, style: AppTextStyles.h6Bold),
                    const Gap(12),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(text: '\$${item.price}', style: AppTextStyles.h6Bold.withPrimaryColor()),
                        const WidgetSpan(child: SizedBox(width: 8)),
                        TextSpan(
                            text: '\$${item.originalPrice}',
                            style: AppTextStyles.bodySmallMedium.copyWith(
                              color: AppColors.current.greyscale700,
                              decoration: TextDecoration.lineThrough,
                            )),
                      ],
                    )),
                    const Gap(12),
                    CourseRatingWidget(total: item.reviewsCount, rating: item.rating),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
