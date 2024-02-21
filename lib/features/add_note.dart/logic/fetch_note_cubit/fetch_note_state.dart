part of 'fetch_note_cubit.dart';

@immutable
sealed class FetchNoteState {}

final class FetchNoteInitial extends FetchNoteState {}

final class FetchNoteFailure extends FetchNoteState {
  final String errMessage;

  FetchNoteFailure(this.errMessage);
}

final class FetchNoteSuccess extends FetchNoteState {
  final List<NoteModel> notesList;

  FetchNoteSuccess({required this.notesList});
}
