import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/spacing.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/features/add_task/logic/cubits/fetch_task/fetch_task_cubit.dart';
import 'package:todo_list/features/add_task/logic/models/task_model.dart';
import 'package:todo_list/features/edit_task/ui/edit_task_screen.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditTaskScreen(taskModel: widget.taskModel),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  widget.taskModel.isDone = !widget.taskModel.isDone;
                  widget.taskModel.save();
                });
              },
              icon: widget.taskModel.isDone
                  ? const Icon(
                      Icons.task_alt_rounded,
                      size: 36,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.radio_button_unchecked,
                      size: 36,
                      color: ColorManager.gray,
                    ),
            ),
            horizontalSpace(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Text(
                      widget.taskModel.date,
                      style: TextStyles.font12LightBlueMedium,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    widget.taskModel.content,
                    style: widget.taskModel.isDone
                        ? TextStyles.font14DarkBlueMediumlineThrough
                        : TextStyles.font14DarkBlueMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              EditTaskScreen(taskModel: widget.taskModel),
                        ));
                  },
                  icon: const Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.taskModel.delete();
                    BlocProvider.of<FetchTaskCubit>(context).fetchTasks();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
