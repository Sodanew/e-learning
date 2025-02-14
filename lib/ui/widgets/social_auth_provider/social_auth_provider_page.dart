import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/domain/entity/enum/enum.dart';
import 'package:collection/collection.dart';
import 'package:gap/gap.dart';

import '../../../base/constants/ui/app_colors.dart';
import '../../../resource/generated/l10n.dart';

class SocialAuthProviderPage extends StatelessWidget {
  const SocialAuthProviderPage({
    super.key,
    this.hideLabel = false,
  });

  final bool hideLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: SocialAuthProvider.values.mapIndexed<Widget>(
        (idx, e) {
          bool isLast = idx == SocialAuthProvider.values.length - 1;
          return Container(
            alignment: Alignment.center,
            margin: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: Dimens.paddingVertical),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: Dimens.paddingHorizontal),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.current.greyscale200)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                e.fromWidget(),
                const Gap(12),
                Text(S.current.continue_with(e.fromTitle()), style: AppTextStyles.bodyLargeSemiBold),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
