import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/add_task/logic/cubits/create_task/create_task_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({super.key});

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextFormField(
              inputTextStyle: const TextStyle(color: Colors.white),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Failed is required';
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                content = value;
              },
              backGroundColor: ColorManager.darkBlue,
              hintText: 'content',
              maxLines: 3,
            ),
            verticalSpace(24),
            AppTextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<CreateTaskCubit>(context)
                      .createTask(content: content!);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              buttonText: 'Add',
              backgroundColor: ColorManager.darkBlue,
            ),
            verticalSpace(12)
          ],
        ));
  }
}
