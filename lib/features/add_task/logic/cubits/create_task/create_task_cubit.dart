
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/core/helpers/constants.dart';
import 'package:todo_list/features/add_task/logic/models/task_model.dart';

part 'create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(CreateTaskInitial());
  var taskBox = Hive.box<TaskModel>(Constants.kTaskBox);

  void createTask({required String content}) {
    emit(CreateTaskLoading());
    try {
      taskBox.add(
        TaskModel(
            content: content,
            date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
            isDone: false),
      );
      emit(CreateTaskSuccess());
    } catch (e) {
      // emit(CreateTaskFailure(e.toString()));
    }
  }
}
