import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/shared_view/common_scaffold.dart';
import 'package:flutter_bloc_template/base/shared_view/common_text_field.dart';
import 'package:flutter_bloc_template/base/shared_view/dialog/app_dialogs.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:flutter_bloc_template/ui/home/components/home_banner_slide_widget.dart';
import 'package:flutter_bloc_template/ui/home/components/home_most_popular_courses_widget.dart';
import 'package:flutter_bloc_template/ui/home/components/home_top_mentors_widget.dart';
import 'package:gap/gap.dart';

import '../../base/shared_view/dialog/common_dialog.dart';
import 'components/home_app_bar_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appBar: const HomeAppBarWidget(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            CommonTextField(
              onChanged: (val) {},
              prefixIconPath: Assets.icons.searchLight.path,
              hintText: 'Search',
              suffixIcon: IconButton(
                onPressed: () {
                  AppDialogs.showPopup(context,
                      child: CommonDialog(
                        icon: Assets.images.shieldPopup.image(width: 185),
                        title: 'Congratulations!',
                        message: 'Your account is ready to use. You will be redirected to the Home page in a few seconds..',
                      ));
                },
                icon: const CircleAvatar(),
              ),
            ),
            const Gap(24),
            const HomeBannerSlideWidget(),
            const Gap(24),
            const HomeTopMentorsWidget(),
            const Gap(24),
            const HomeMostPopularCoursesWidget(),
          ],
        ),
      ),
    );
  }
}
