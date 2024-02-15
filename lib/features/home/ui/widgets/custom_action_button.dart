import 'package:flutter/material.dart';

import '../../../../core/theming/color.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: ColorManager.darkBlue,
      backgroundColor: ColorManager.mainBlue.withOpacity(0.8),
      onPressed: () {},
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
