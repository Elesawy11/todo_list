import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/extension.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/core/widgets/main_app_icon.dart';
import 'package:todo_list/features/add_task/logic/cubits/fetch_task/fetch_task_cubit.dart';
import 'package:todo_list/features/add_task/logic/models/task_model.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EditTaskBody extends StatefulWidget {
  const EditTaskBody({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  State<EditTaskBody> createState() => _EditTaskBodyState();
}

final class _EditTaskBodyState extends State<EditTaskBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Edit Task',
                style: TextStyles.font22DarkBlueMedium,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.05),
                    shape: BoxShape.rectangle),
                child: MainAppIcon(
                  onPressed: () {
                    widget.taskModel.content =
                        content ?? widget.taskModel.content;
                    widget.taskModel.save();
                    BlocProvider.of<FetchTaskCubit>(context).fetchTasks();
                    context.pop();
                  },
                  icon: Icons.done,
                  iconColor: Colors.black,
                ),
              )
            ],
          ),
          verticalSpace(24),
          AppTextFormField(
            inputTextStyle: const TextStyle(color: Colors.white),
            onChanged: (value) {
              content = value;
            },
            backGroundColor: ColorManager.darkBlue,
            hintText: widget.taskModel.content,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
