import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/shared_view/common_button.dart';
import 'package:flutter_bloc_template/domain/entity/config/onboarding_entity.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:flutter_bloc_template/ui/onboarding/components/dot_widget.dart';
import 'package:gap/gap.dart';

import '../../base/helper/duration_provider.dart';
import '../../base/shared_view/common_scaffold.dart';
import '../../resource/generated/l10n.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int index = 0;

  final items = <OnboardingEntity>[
    OnboardingEntity(
        path: Assets.images.frame.path,
        title: [S.current.onboarding_1_title, S.current.onboarding_1_title_2],
        content: S.current.onboarding_1_description),
    OnboardingEntity(
        path: Assets.images.frame1.path,
        title: [S.current.onboarding_2_title, S.current.onboarding_2_title_2],
        content: S.current.onboarding_2_description),
    OnboardingEntity(
        path: Assets.images.frame2.path,
        title: [S.current.onboarding_3_title, S.current.onboarding_3_title_2],
        content: S.current.onboarding_3_description),
  ];

  bool get isLast => index <= items.length - 1;

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              // const Gap(12),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Opacity(
              //     opacity: isLast ? 0 : 1,
              //     child: TextButton(
              //       onPressed: () {
              //         if (isLast) return;
              //       },
              //       child: Text(
              //         'Skip',
              //         style: AppTextStyles.bodyMediumSemiBold.copyWith(color: AppColors.current.grayscale10),
              //       ),
              //     ),
              //   ),
              // ),
              AspectRatio(
                aspectRatio: .97,
                child: AnimatedSwitcher(
                  duration: const ShortDuration(),
                  transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                  child: SizedBox(
                    key: ValueKey('onboarding-image-$index'),
                    child: AssetGenImage(items[index].path).image(),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(Dimens.paddingHorizontal),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedPadding(
                      padding: isLast ? const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge) : EdgeInsets.zero,
                      duration: const MediumDuration(),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: AppTextStyles.h2Bold,
                          children: [
                            TextSpan(text: items[index].title.first),
                          ],
                        ),
                      ),
                    ),
                    const Gap(Dimens.paddingHorizontalLarge),
                    DotWidget(index: index),
                    const Gap(Dimens.paddingHorizontalLarge),
                    CommonButton.large(
                      title: isLast ? S.current.get_started : S.current.next,
                      onPressed: () {
                        if (index < items.length - 1) {
                          setState(() {
                            index++;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
