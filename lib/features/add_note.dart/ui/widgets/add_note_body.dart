import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/extension.dart';
import 'package:todo_list/features/add_note.dart/logic/cubit/note_cubit.dart';
import '../../logic/fetch_note_cubit/fetch_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteBody extends StatelessWidget {
  const AddNoteBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Builder(builder: (context) {
        final NoteCubit cubit = BlocProvider.of(context);
        return BlocConsumer<NoteCubit, NoteState>(
          bloc: cubit,
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              BlocProvider.of<FetchNoteCubit>(context).fetchNotes();
              context.pop();
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w,
                    top: 34.h,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNoteForm(
                  isLoading: state is AddNoteLoading ? true : false,
                ),
              )),
            );
          },
        );
      }),
    );
  }
}
