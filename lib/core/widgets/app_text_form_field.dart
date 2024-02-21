import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/color.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      required this.hintText,
      this.suffixIcon,
      this.obscureText,
      this.inputTextStyle,
      this.backGroundColor,
      this.maxLines,
      this.onSaved, this.validator, this.onChanged});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextStyle? inputTextStyle;
  final Color? backGroundColor;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      onSaved: onSaved,
      // in this case only 
      validator: validator,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorManager.mainBlue, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                    color: ColorManager.lighterGray, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backGroundColor ?? ColorManager.moreLightGray,
          filled: true),
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14lightBlueMedium,
    );
  }
}
