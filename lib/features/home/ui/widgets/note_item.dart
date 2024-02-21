import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/theming/styles.dart';
import 'package:todo_list/features/add_note.dart/logic/models/note_model.dart';
import 'package:todo_list/features/edit_note/ui/edit_note_screen.dart';
import '../../../add_note.dart/logic/fetch_note_cubit/fetch_note_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteScreen(noteModel: noteModel),
            ));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(noteModel.color),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  dense: true,
                  title: Padding(
                    padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
                    child: Text(
                      noteModel.title,
                      style: TextStyles.font22DarkBlueMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  subtitle: Text(
                    noteModel.subTitle,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font14lightBlueMedium,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      noteModel.delete();
                      BlocProvider.of<FetchNoteCubit>(context).fetchNotes();
                    },
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
                  ),
                  child: Text(
                    noteModel.date,
                    style: TextStyles.font12LightBlueMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
