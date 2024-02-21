import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/add_note.dart/logic/fetch_note_cubit/fetch_note_cubit.dart';

import 'note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNoteCubit, FetchNoteState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.22,
          child: state is FetchNoteSuccess
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.notesList.length,
                  itemBuilder: (context, index) => NoteItem(
                    noteModel: state.notesList[index],
                  ),
                )
              : state is FetchNoteFailure
                  ? Center(
                      child: Text(state.errMessage),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
        );
      },
    );
  }
}
