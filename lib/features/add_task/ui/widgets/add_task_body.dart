import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/extension.dart';
import 'package:todo_list/features/add_task/logic/cubits/create_task/create_task_cubit.dart';
import 'package:todo_list/features/add_task/logic/cubits/fetch_task/fetch_task_cubit.dart';
import 'add_task_form.dart';

class AddTaskBody extends StatelessWidget {
  const AddTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskCubit(),
      child: BlocConsumer<CreateTaskCubit, CreateTaskState>(
        listener: (context, state) {
          if (state is CreateTaskSuccess) {
            BlocProvider.of<FetchTaskCubit>(context).fetchTasks();
            context.pop();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is CreateTaskLoading ? true : false,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w,
                    top: 34.h,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child:const AddTaskForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
