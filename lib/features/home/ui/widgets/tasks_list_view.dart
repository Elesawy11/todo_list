import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/add_task/logic/cubits/fetch_task/fetch_task_cubit.dart';
import 'package:todo_list/features/home/ui/widgets/task_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchTaskCubit, FetchTaskState>(
      builder: (context, state) {
        return state is FetchTaskSuccess
            ? Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: state.tasksList.length,
                  itemBuilder: (context, index) => TaskItem(
                    taskModel: state.tasksList[index],
                  ),
                ),
              )
            : state is FetchTaskFailure
                ? Center(child: Text(state.errMessage))
                : const Center(
                    child: CircularProgressIndicator(),
                  );
      },
    );
  }
}
