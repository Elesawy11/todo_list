import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/spacing.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/theming/styles.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_box_outline_blank,
              size: 36,
              color: ColorManager.gray,
            ),
          ),
          horizontalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  '8:00 PM',
                  style: TextStyles.font12LightBlueMedium,
                ),
              ),
              Text(
                'hello ahmed elesawy',
                style: TextStyles.font14DarkBlueMedium,
              ),
            ],
          ),
          horizontalSpace(74),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.star_border,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
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

      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     ListTile(
      //       dense: true,
      //       leading: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.check_box_outline_blank,
      //           size: 36,
      //         ),
      //       ),
      //       title: Text(
      //         '8:00 PM',
      //         style: TextStyles.font12LightBlueMedium,
      //       ),
      //       subtitle: Text(
      //         'hello ahmed elesawy',
      //         style: TextStyles.font14DarkBlueMedium,
      //       ),
      //       trailing: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.delete,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.star_border,
      //         size: 30,
      //         color: Colors.black,
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
