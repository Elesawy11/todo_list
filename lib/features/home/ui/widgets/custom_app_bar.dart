import 'package:flutter/material.dart';
import 'package:todo_list/core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'THI',
            style: TextStyles.font32darkBlueMedium,
          ),
          TextSpan(text: 'N', style: TextStyles.font32mainBlueMedium),
          TextSpan(
            text: 'K',
            style: TextStyles.font32darkBlueMedium,
          ),
        ])),
      ),
    );
  }
}
