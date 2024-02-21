import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/extension.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/core/widgets/main_app_icon.dart';
import 'package:todo_list/features/add_note.dart/logic/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:todo_list/features/add_note.dart/logic/models/note_model.dart';
import 'package:todo_list/features/edit_note/ui/widgets/edit_color_list_view.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

final class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Edit Note',
                style: TextStyles.font22DarkBlueMedium,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.05),
                    shape: BoxShape.rectangle),
                child: MainAppIcon(
                  onPressed: () {
                    widget.noteModel.title = title ?? widget.noteModel.title;
                    widget.noteModel.subTitle =
                        subTitle ?? widget.noteModel.subTitle;
                    widget.noteModel.save();
                    BlocProvider.of<FetchNoteCubit>(context).fetchNotes();
                    context.pop();
                  },
                  icon: Icons.done,
                  iconColor: Colors.black,
                ),
              )
            ],
          ),
          verticalSpace(60),
          AppTextFormField(
            onChanged: (value) {
              title = value;
            },
            inputTextStyle: const TextStyle(color: Colors.white),
            hintText: widget.noteModel.title,
            backGroundColor: ColorManager.darkBlue,
          ),
          verticalSpace(24),
          AppTextFormField(
            inputTextStyle: const TextStyle(color: Colors.white),
            onChanged: (value) {
              subTitle = value;
            },
            backGroundColor: ColorManager.darkBlue,
            hintText: widget.noteModel.subTitle,
            maxLines: 3,
          ),
          verticalSpace(24),
          EditColorListView(
            noteModel: widget.noteModel,
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
