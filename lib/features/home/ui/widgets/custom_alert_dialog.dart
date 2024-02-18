import 'package:flutter/material.dart';
import 'package:todo_list/core/theming/styles.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Text(
        'add:',
        style: TextStyles.font18BlueSemiBold,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Note',
                style: TextStyles.font14DarkBlueMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Task', style: TextStyles.font14DarkBlueMedium),
            ),
          ],
        )
      ],
    );
  }
}
