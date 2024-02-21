import 'package:flutter/material.dart';
import 'package:todo_list/features/add_task/logic/models/task_model.dart';
import 'package:todo_list/features/edit_task/ui/widgets/edit_task_body.dart';

class EditTaskScreen extends StatelessWidget {
  const EditTaskScreen({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: EditTaskBody(
      taskModel: taskModel,
    )));
  }
}
