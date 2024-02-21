import 'package:flutter/material.dart';
import 'package:todo_list/features/add_note.dart/logic/models/note_model.dart';
import 'package:todo_list/features/edit_note/ui/widgets/edit_note_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: EditNoteBody(
        noteModel: noteModel,
      ),
    ));
  }
}
