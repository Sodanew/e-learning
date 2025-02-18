import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/domain/entity/course/category_entity.dart';
import 'package:flutter_bloc_template/domain/entity/course/course_entity.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../base/constants/ui/app_colors.dart';

class HomeMostPopularCoursesWidget extends StatelessWidget {
  const HomeMostPopularCoursesWidget(
      {super.key, required this.courses, required this.categories, required this.onCategoryChanged, required this.categoryId});

  final List<CourseEntity> courses;
  final List<CategoryEntity> categories;
  final String categoryId;

  final ValueChanged<CategoryEntity> onCategoryChanged;

  List<CourseEntity> get _courseList => courses.length > 5 ? courses.sublist(2).toList() : courses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Most Popular Courses', style: AppTextStyles.h5Bold),
              Text('See All', style: AppTextStyles.bodyLargeBold.withPrimaryColor()),
            ],
          ),
        ),
        const Gap(Dimens.paddingVerticalLarge),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
          child: _categories(),
        ),
        Container(
          margin: const EdgeInsets.only(top: Dimens.paddingVerticalLarge),
          color: const Color(0xffF9F9F9),
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontal).copyWith(top: 20),
          child: _items(),
        ),
      ],
    );
  }

  Widget _categories() {
    if (categories.isEmpty) return const SizedBox.shrink();
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (_, __) => const Gap(Dimens.paddingHorizontal),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final item = categories[index];
          final bool selected = item.id == categoryId;
          return ChoiceChip(
            onSelected: (_) {
              onCategoryChanged.call(item);
            },
            label: Text(item.name),
            labelStyle:
                AppTextStyles.bodyLargeSemiBold.copyWith(color: selected ? AppColors.current.otherWhite : AppColors.current.primary500),
            selected: selected,
            showCheckmark: false,
            selectedColor: AppColors.current.primary500,
            color: WidgetStateProperty.all(selected ? AppColors.current.primary500 : AppColors.current.otherWhite),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.current.primary500, width: 2),
              borderRadius: BorderRadius.circular(100),
            ),
          );
        },
      ),
    );
  }

  Widget _items() {
    return Column(
      children: List<Widget>.generate(
        _courseList.length,
        (i) {
          final item = _courseList[i];
          return Container(
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
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColors.current.greyscale200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Gap(Dimens.paddingHorizontal),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(color: AppColors.current.transparentBlue, borderRadius: BorderRadius.circular(6)),
                              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                              child: Text(item.category, style: AppTextStyles.bodyXSmallSemiBold.withPrimaryColor()),
                            ),
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
                        IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Assets.icons.star.svg(width: 16, height: 16),
                              const Gap(8),
                              Text('${item.rating}', style: AppTextStyles.bodySmallMedium.copyWith(color: AppColors.current.greyscale700)),
                              const Gap(8),
                              VerticalDivider(color: AppColors.current.greyscale700, width: 1, indent: 3, endIndent: 3),
                              const Gap(8),
                              Text('${NumberFormat("#,###").format(item.students)} students',
                                  style: AppTextStyles.bodySmallMedium.copyWith(color: AppColors.current.greyscale700))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
