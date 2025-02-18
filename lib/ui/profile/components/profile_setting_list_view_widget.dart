import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_text_styles.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:gap/gap.dart';

import '../../../base/constants/ui/app_colors.dart';

class ProfileSettingListViewWidget extends StatelessWidget {
  const ProfileSettingListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _item(onTap: () {}, label: 'Edit Profile', icon: Assets.icons.profileCurved.svg()),
        _item(onTap: () {}, label: 'Notification', icon: Assets.icons.notificationCurved.svg()),
        _item(onTap: () {}, label: 'Payment', icon: Assets.icons.walletCurved.svg()),
        _item(onTap: () {}, label: 'Security', icon: Assets.icons.shieldDoneCurved.svg()),
        _item(
          onTap: () {},
          label: 'Language',
          icon: Assets.icons.moreCircleCurved.svg(),
          trailling: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('English (US)'),
              const Gap(20),
              Assets.icons.arrowRight2.svg(),
            ],
          ),
        ),
        _item(
            onTap: () {},
            label: 'Dark Mode',
            icon: Assets.icons.showCurved.svg(),
            trailling: Builder(
              builder: (_) {
                bool enable = false;
                return StatefulBuilder(
                  builder: (context, setState) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          enable = !enable;
                        });
                      },
                      child: enable ? Assets.icons.toggleEnable.svg() : Assets.icons.toggleDisabled.svg(),
                    );
                  },
                );
              },
            )),
        _item(onTap: () {}, label: 'Privacy Policy', icon: Assets.icons.lockCurved.svg()),
        _item(onTap: () {}, label: 'Help Center', icon: Assets.icons.infoSquareCurved.svg()),
        _item(onTap: () {}, label: 'Invite Friends', icon: Assets.icons.usersCurve.svg()),
        _item(
          onTap: () {},
          label: 'Logout',
          icon: Assets.icons.usersCurve.svg(
              colorFilter: ColorFilter.mode(
            AppColors.current.error,
            BlendMode.srcIn,
          )),
          trailling: const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _item({
    required VoidCallback? onTap,
    required String label,
    required Widget icon,
    Widget? trailling,
    // bool visibleBorderBottom = true,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const Gap(20),
              Text(label, style: AppTextStyles.bodyXLargeBold),
            ],
          ),
          trailling ?? Assets.icons.arrowRight2.svg(width: 20, height: 20),
        ],
      ),
    );
  }
}
