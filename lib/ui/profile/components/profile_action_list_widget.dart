import 'package:flutter/material.dart';

class ProfileActionListWidget extends StatelessWidget {
  const ProfileActionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [],
    );
  }

  Widget _item({
    required String label,
    required VoidCallback? onTap,
    bool visibleBorderBottom = true,
  }) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }
}
