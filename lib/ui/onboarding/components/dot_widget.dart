import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List<Widget>.generate(
        3,
        (i) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: i == index ? 32 : 12,
          height: 12,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: i == index ? AppColors.current.primary500 : AppColors.current.greyscale300,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ).toList(),
    );
  }
}
