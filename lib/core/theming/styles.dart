import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32darkBlueMedium = TextStyle(
      fontSize: 32.sp,
      color: ColorManager.darkBlue,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font32mainBlueMedium = TextStyle(
      fontSize: 32.sp,
      color: ColorManager.mainBlue,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font14lightBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue.withOpacity(.5),
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueMediumlineThrough = TextStyle(
      fontSize: 14.sp,
      color: ColorManager.darkBlue,
      fontWeight: FontWeightHelper.medium,
      decoration: TextDecoration.lineThrough);

  static TextStyle font12LightBlueMedium = TextStyle(
    fontSize: 12.sp,
    color: ColorManager.darkBlue.withOpacity(.5),
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font22DarkBlueMedium = TextStyle(
    fontSize: 22.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.lightGray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font18BlueSemiBold = TextStyle(
    fontSize: 18.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
}
