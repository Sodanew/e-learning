import 'package:flutter/cupertino.dart';

import '../../../resource/generated/assets.gen.dart';
import '../../../resource/generated/l10n.dart';

enum SocialAuthProvider {
  google,
  facebook,
  apple;

  String fromTitle() {
    return switch (this) {
      SocialAuthProvider.google => S.current.google,
      SocialAuthProvider.facebook => S.current.facebook,
      SocialAuthProvider.apple => S.current.apple,
    };
  }

  Widget fromWidget() {
    return switch (this) {
      SocialAuthProvider.google => Assets.images.google.image(width: 24),
      SocialAuthProvider.facebook => Assets.images.facebook.image(width: 24),
      SocialAuthProvider.apple => Assets.images.apple.image(width: 24),
    };
  }
}

enum BottomTab {
  home,
  myCourse,
  inbox,
  transcation,
  profile;

  Widget fromWidget([bool enable = false]) {
    final path = switch (this) {
      BottomTab.home => enable ? Assets.icons.homeEnable : Assets.icons.home,
      BottomTab.myCourse => enable ? Assets.icons.documentEnable : Assets.icons.document,
      BottomTab.inbox => enable ? Assets.icons.chatEnable : Assets.icons.chat,
      BottomTab.transcation => enable ? Assets.icons.buyEnable : Assets.icons.buy,
      BottomTab.profile => enable ? Assets.icons.profileEnable : Assets.icons.profile,
    };

    return path.svg(width: 24, height: 24);
  }

  String fromTitle() {
    return switch (this) {
      BottomTab.home => S.current.home,
      BottomTab.myCourse => S.current.my_course,
      BottomTab.inbox => S.current.inbox,
      BottomTab.transcation => S.current.transcation,
      BottomTab.profile => S.current.profile,
    };
  }
}

enum CourseTab {
  about,
  lessons,
  reviews;

  String fromTitle() {
    return switch (this) {
      CourseTab.about => 'About',
      CourseTab.lessons => 'Lessons',
      CourseTab.reviews => 'Reviews',
    };
  }
}
