import 'package:flutter/material.dart';
import 'package:todo_list/features/home/ui/widgets/custom_alert_dialog.dart';

import '../../../../core/theming/color.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      foregroundColor: ColorManager.darkBlue,
      backgroundColor: ColorManager.mainBlue.withOpacity(0.8),
      onPressed: () => showDialog(
        context: context,
        builder: (context) => const CustomAlertDialog(),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
