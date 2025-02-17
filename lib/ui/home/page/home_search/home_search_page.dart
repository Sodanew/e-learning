import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/shared_view/common_app_bar.dart';
import 'package:flutter_bloc_template/base/shared_view/common_scaffold.dart';
import 'package:flutter_bloc_template/ui/home/components/home_search_widget.dart';
import 'package:flutter_bloc_template/ui/home/page/home_search/bloc/home_search_bloc.dart';
import 'package:flutter_bloc_template/ui/home/page/home_search/bloc/home_search_event.dart';

import '../../../../base/shared_view/common_base_state.dart';

@RoutePage()
class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({super.key});

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends CommonBaseState<HomeSearchPage, HomeSearchBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(HomeSearchDataRequestEvent());
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ));
  }

  _buildAppBar() {
    return CommonAppBar(
      text: HomeSearchWidget(
        autoFocus: true,
        onChanged: (String value) {},
      ),
      titleType: AppBarTitle.widget,
      height: 100,
    );
  }
}
