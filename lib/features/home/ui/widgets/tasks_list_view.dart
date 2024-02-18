import 'package:flutter/material.dart';
import 'package:todo_list/features/home/ui/widgets/task_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => TaskItem(),
        childCount: 20,
      ),
    );
    // return ListView.builder(
    //   scrollDirection: Axis.vertical,
    //   shrinkWrap: true,
    //   itemCount: 6,
    //   itemBuilder: (context, index) => TaskItem(),
    // );
  }
}
