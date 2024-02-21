import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/features/home/ui/widgets/note_list_view.dart';
import 'package:todo_list/features/home/ui/widgets/tasks_list_view.dart';
import '../../../../core/helpers/spacing.dart';
import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            verticalSpace(12),
            verticalSpace(12),
            Text(
              'Notes:',
              style: TextStyles.font22DarkBlueMedium,
            ),
            verticalSpace(12),
            const NoteListView(),
            verticalSpace(12),
            Text(
              'Today\'s tasks:',
              style: TextStyles.font22DarkBlueMedium,
            ),
            verticalSpace(12),
            const TasksListView(),
          ],
        ),
      ),
    );
  }
}
