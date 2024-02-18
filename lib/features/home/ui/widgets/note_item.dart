import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/theming/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorManager.green,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                dense: true,
                title: Padding(
                  padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
                  child: Text(
                    'Hello',
                    style: TextStyles.font22DarkBlueMedium,
                  ),
                ),
                subtitle: Text(
                  'hello ahmed elesawy',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font14lightBlueMedium,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 24.w,
                  bottom: 18.h,
                ),
                child: Text(
                  '2024-2-15',
                  style: TextStyles.font12LightBlueMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
