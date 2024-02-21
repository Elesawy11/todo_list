import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_list/core/helpers/constants.dart';
import 'package:todo_list/core/routing/app_router.dart';
import 'package:todo_list/simple_bloc_observer.dart';
import 'package:todo_list/todo_list.dart';
import 'features/add_note.dart/logic/models/note_model.dart';
import 'features/add_task/logic/models/task_model.dart';

void main(List<String> args) async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(Constants.kNoteBox);
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(Constants.kTaskBox);
  Bloc.observer = SimpleBlocObserver();

  runApp(TodoListApp(
    appRouter: AppRouter(),
  ));
}
