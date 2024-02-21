part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}
final class AddNoteLoading extends NoteState {}
final class AddNoteSuccess extends NoteState {}
final class AddNoteFailure extends NoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}


