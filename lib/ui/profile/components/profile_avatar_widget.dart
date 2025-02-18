import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:gap/gap.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CircleAvatar(radius: 60),
              Positioned(bottom: 5, right: 0, child: Assets.icons.editSquare.svg(width: 30)),
            ],
          ),
          const Gap(20),
          Text('Andrew Ainsley', style: AppTextStyles.h4Bold),
          const Gap(8),
          Text(
            'andrew_ainsley@yourdomain.com',
            style: AppTextStyles.bodyMediumSemiBold,
          )
        ],
      ),
    );
  }
}
