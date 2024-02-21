import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/helpers/spacing.dart';
import 'package:todo_list/core/widgets/app_text_button.dart';
import 'package:todo_list/features/add_note.dart/logic/cubit/note_cubit.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'color_list_view.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key, required this.isLoading});
  final bool isLoading;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
                title = value;
              },
              hintText: 'Title',
              backGroundColor: ColorManager.darkBlue,
            ),
            verticalSpace(24),
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
                subTitle = value;
              },
              backGroundColor: ColorManager.darkBlue,
              hintText: 'content',
              maxLines: 3,
            ),
            verticalSpace(24),
            const ColorListView(),
            verticalSpace(24),
            AppTextButton(
              isLoading: widget.isLoading,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<NoteCubit>(context).addNote(
                    title: title!,
                    subTitle: subTitle!,
                  );
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
