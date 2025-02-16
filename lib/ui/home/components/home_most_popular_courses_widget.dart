import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:gap/gap.dart';

import '../../../base/constants/ui/app_colors.dart';

class HomeMostPopularCoursesWidget extends StatelessWidget {
  const HomeMostPopularCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Most Popular Courses', style: AppTextStyles.h5Bold),
            Text('See All', style: AppTextStyles.bodyLargeBold.withPrimaryColor()),
          ],
        ),
        const Gap(Dimens.paddingVerticalLarge),
        _categories(),
        const Gap(Dimens.paddingVerticalLarge),
        _items(),
      ],
    );
  }

  SizedBox _categories() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (_, __) => const Gap(Dimens.paddingHorizontal),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final bool selected = index == 0;
          return ChoiceChip(
            onSelected: (val) {},
            label: const Text('3D Design'),
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

  _items() {
    return Column(
      children: List<Widget>.generate(
        5,
        (e) {
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
                              child: Text('3D Design', style: AppTextStyles.bodyXSmallSemiBold.withPrimaryColor()),
                            ),
                            Assets.icons.bookmarkCurved
                                .svg(width: 24, colorFilter: ColorFilter.mode(AppColors.current.primary500, BlendMode.srcIn))
                          ],
                        ),
                        const Gap(12),
                        const Text('3D Design Illustration'),
                        const Gap(12),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(text: '\$48', style: AppTextStyles.h6Bold.withPrimaryColor()),
                            const WidgetSpan(child: SizedBox(width: 8)),
                            TextSpan(
                                text: '\$48',
                                style: AppTextStyles.bodySmallMedium.copyWith(
                                  color: AppColors.current.greyscale700,
                                  decoration: TextDecoration.lineThrough,
                                )),
                          ],
                        )),
                        const Gap(12),
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
