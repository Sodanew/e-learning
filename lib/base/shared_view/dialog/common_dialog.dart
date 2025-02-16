import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/helper/checker.dart';
import 'package:gap/gap.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({super.key, this.icon, this.title, required this.message});

  final Widget? icon;
  final String? title;
  final dynamic message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          const Gap(40),
          icon!,
          const Gap(32),
        ],
        if (!empty(title)) ...[
          Text(
            title!,
            style: AppTextStyles.h4Bold.copyWith(color: AppColors.current.primary500),
            textAlign: TextAlign.center,
          ),
          const Gap(Dimens.paddingVertical),
        ],
        message is Widget
            ? message
            : Text(
                message,
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyLargeRegular,
              ),
      ],
    );
  }
}
