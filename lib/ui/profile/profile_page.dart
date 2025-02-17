import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/shared_view/common_app_bar.dart';
import 'package:flutter_bloc_template/base/shared_view/common_scaffold.dart';
import 'package:flutter_bloc_template/ui/profile/components/profile_avatar_widget.dart';
import 'package:gap/gap.dart';

import '../../base/constants/ui/app_colors.dart';
import 'components/profile_action_list_widget.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        text: 'Profile',
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        leadingIcon: LeadingIcon.none,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAvatarWidget(),
            const Gap(Dimens.paddingVerticalLarge),
            Divider(height: 1, color: AppColors.current.greyscale200),
            const Gap(Dimens.paddingVerticalLarge),
            ProfileActionListWidget(),
          ],
        ),
      ),
    );
  }
}
