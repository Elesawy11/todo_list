import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/core/helpers/constants.dart';
import '../models/note_model.dart';
part 'fetch_note_state.dart';

class FetchNoteCubit extends Cubit<FetchNoteState> {
  FetchNoteCubit() : super(FetchNoteInitial());
  void fetchNotes() {
    var noteBox = Hive.box<NoteModel>(Constants.kNoteBox);
    try {
      emit(FetchNoteSuccess(notesList: noteBox.values.toList()));
    } catch (e) {
      emit(FetchNoteFailure(e.toString()));
    }
  }
}
