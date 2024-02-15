import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';

class CustomButtonAppBar extends StatelessWidget {
  const CustomButtonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: ColorManager.mainBlue.withOpacity(0.8),
        elevation: 0.5,
        height: 50.h,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.star_rate,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
