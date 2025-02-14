import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:gap/gap.dart';

import '../../base/constants/ui/app_colors.dart';
import '../../resource/generated/l10n.dart';

class ViaWidget extends StatelessWidget {
  const ViaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Divider(color: AppColors.current.greyscale200)),
          const Gap(10),
          Text(S.current.or.toLowerCase(),
              style: AppTextStyles.bodyXLargeSemiBold.copyWith(color: AppColors.current.greyscale700)),
          const Gap(10),
          Expanded(child: Divider(color: AppColors.current.greyscale200)),
        ],
      ),
    );
  }
}