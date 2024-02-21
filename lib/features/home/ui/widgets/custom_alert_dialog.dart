import 'package:flutter/material.dart';
import 'package:todo_list/core/helpers/extension.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/features/add_note.dart/ui/add_note.dart';
import 'package:todo_list/features/add_task/ui/add_task.dart';

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
              onPressed: () {
                context.pop();
                showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  context: context,
                  builder: (context) {
                    return const AddNote();
                  },
                );
              },
              child: Text(
                'Note',
                style: TextStyles.font14DarkBlueMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.pop();
                showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  context: context,
                  builder: (context) {
                    return const AddTask();
                  },
                );
              },
              child: Text('Task', style: TextStyles.font14DarkBlueMedium),
            ),
          ],
        )
      ],
    );
  }
}
