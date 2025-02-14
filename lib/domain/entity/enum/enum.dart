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
