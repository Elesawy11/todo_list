import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/spacing.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/core/widgets/app_text_button.dart';
import 'package:todo_list/core/widgets/app_text_form_field.dart';

class AddTaskBody extends StatefulWidget {
  const AddTaskBody({super.key});

  @override
  State<AddTaskBody> createState() => _AddTaskBodyState();
}

class _AddTaskBodyState extends State<AddTaskBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: 14.w,
            right: 14.w,
            top: 34.h,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextFormField(
                  onSaved: (p0) {},
                  backGroundColor: ColorManager.darkBlue,
                  hintText: 'content',
                  maxLines: 3,
                ),
                verticalSpace(24),
                AppTextButton(
                  onPressed: () {},
                  buttonText: 'Add',
                  backgroundColor: ColorManager.darkBlue,
                ),
                verticalSpace(12)
              ],
            )),
      ),
    );
  }
}
