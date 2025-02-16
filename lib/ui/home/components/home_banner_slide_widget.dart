import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:gap/gap.dart';

class HomeBannerSlideWidget extends StatelessWidget {
  const HomeBannerSlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Container(
        // height: 182,
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.current.gradientBlue, boxShadow: [
          BoxShadow(
            color: AppColors.current.primary500.withOpacity(.25),
            offset: const Offset(4, 8),
            blurRadius: 24,
          )
        ]),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('40% OFF', style: AppTextStyles.bodyMediumSemiBold.copyWith(color: AppColors.current.otherWhite)),
                            const Gap(8),
                            Text('Today’s Special', style: AppTextStyles.h4Bold.copyWith(color: AppColors.current.otherWhite)),
                          ],
                        ),
                        const Gap(12),
                        Text(
                          '40%',
                          style: AppTextStyles.h1Bold.copyWith(color: AppColors.current.otherWhite),
                        )
                      ],
                    ),
                  ),
                  const Gap(Dimens.paddingVertical),
                  Text(
                    'Get a discount for every course order! \nOnly valid for today!',
                    style: AppTextStyles.bodyLargeMedium.copyWith(color: AppColors.current.otherWhite),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Positioned(child: Assets.icons.vector1.svg()),
            Positioned(right: 0, bottom: 0, child: Assets.icons.vector2.svg()),
          ],
        ),
      ),
    );
  }
}
