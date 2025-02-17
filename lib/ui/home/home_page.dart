import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/base/constants/ui/dimens.dart';
import 'package:flutter_bloc_template/base/shared_view/common_base_state.dart';
import 'package:flutter_bloc_template/base/shared_view/common_scaffold.dart';
import 'package:flutter_bloc_template/base/shared_view/common_text_field.dart';
import 'package:flutter_bloc_template/base/shared_view/dialog/app_dialogs.dart';
import 'package:flutter_bloc_template/domain/entity/course/promote_entity.dart';
import 'package:flutter_bloc_template/resource/generated/assets.gen.dart';
import 'package:flutter_bloc_template/ui/home/bloc/home_state.dart';
import 'package:flutter_bloc_template/ui/home/components/home_banner_slide_widget.dart';
import 'package:flutter_bloc_template/ui/home/components/home_most_popular_courses_widget.dart';
import 'package:flutter_bloc_template/ui/home/components/home_top_mentors_widget.dart';
import 'package:gap/gap.dart';

import '../../base/shared_view/dialog/common_dialog.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'components/home_app_bar_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends CommonBaseState<HomePage, HomeBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(HomeDataRequestedEvent());
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: const HomeAppBarWidget(),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                    BlocSelector<HomeBloc, HomeState, List<PromoteEntity>>(
                      selector: (state) => state.promotes,
                      builder: (_, promotes) {
                        return HomeBannerSlideWidget(items: promotes);
                      },
                    ),
                    const Gap(24),
                    const HomeTopMentorsWidget(),
                  ],
                )),
            Container(
              color: const Color(0xffF9F9F9),
              padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalLarge),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(24),
                  HomeMostPopularCoursesWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
