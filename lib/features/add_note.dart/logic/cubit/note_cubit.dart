import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/core/helpers/constants.dart';
import 'package:todo_list/features/add_note.dart/logic/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  var noteBox = Hive.box<NoteModel>(Constants.kNoteBox);
  int color = Colors.orange.value;
//========================================================
  void addNote({
    required String title,
    required String subTitle,
  }) async {
    emit(AddNoteLoading());

    try {
      await noteBox.add(
        NoteModel(
          title: title,
          subTitle: subTitle,
          date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          color: color,
        ),
      );
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }

}
