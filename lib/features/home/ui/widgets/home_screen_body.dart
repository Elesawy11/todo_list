import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/features/home/ui/widgets/note_list_view.dart';
import 'package:todo_list/features/home/ui/widgets/tasks_list_view.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // shrinkWrap: true,
      slivers: [
        const SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(12),
        ),
        SliverToBoxAdapter(
          child: AppTextFormField(
            hintText: 'Search',
            suffixIcon: const Icon(
              Icons.search,
              size: 30,
              color: ColorManager.mainBlue,
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Notes:',
            style: TextStyles.font22DarkBlueMedium,
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(12),
        ),
        const SliverToBoxAdapter(
          child: NoteListView(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(8),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Today\'s tasks:',
            style: TextStyles.font22DarkBlueMedium,
          ),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(12),
        ),
        const TasksListView(),
      ],
    );
  }
}
