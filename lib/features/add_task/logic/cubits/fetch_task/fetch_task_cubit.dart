import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:todo_list/core/helpers/constants.dart';

import '../../models/task_model.dart';

part 'fetch_task_state.dart';

class FetchTaskCubit extends Cubit<FetchTaskState> {
  FetchTaskCubit() : super(FetchTaskInitial());
  var taskBox = Hive.box<TaskModel>(Constants.kTaskBox);
  List<TaskModel> taskes = [];
  List<TaskModel> tasksDisplay = [];

  // void search({required String searchText}) {
  //   emit(SearchTaskLoading());
  //   try {
  //     searchText = searchText.toLowerCase();
  //     taskes = taskes.where((task) {
  //       var contentLowerCase = task.content.toLowerCase();
  //       return contentLowerCase.contains(searchText);
  //     }).toList();
  //     fetchTasks();
  //     emit(SearchTaskSuccess(tasksList: taskes));
  //   } catch (e) {
  //     emit(SearchTaskFailure(e.toString()));
  //   }
  // }


  void fetchTasks() {
    try {
      taskes = taskBox.values.toList();
      emit(FetchTaskSuccess(taskes));
    } catch (e) {
      emit(FetchTaskFailure(e.toString()));
    }
    print('taskes is :$taskes');
  }

}
