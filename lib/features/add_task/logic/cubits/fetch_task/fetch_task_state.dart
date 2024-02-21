part of 'fetch_task_cubit.dart';

@immutable
sealed class FetchTaskState {}

final class FetchTaskInitial extends FetchTaskState {}

// final class SearchTaskSuccess extends FetchTaskState {
//    final List<TaskModel> tasksList;

//   SearchTaskSuccess({required this.tasksList});
// }

// final class SearchTaskLoading extends FetchTaskState {}
// final class SearchTaskFailure extends FetchTaskState {
//   final String errMessage;

//   SearchTaskFailure(this.errMessage);
// }

final class FetchTaskSuccess extends FetchTaskState {
  final List<TaskModel> tasksList;

  FetchTaskSuccess(this.tasksList);
}

final class FetchTaskLoading extends FetchTaskState {}

final class FetchTaskFailure extends FetchTaskState {
  final String errMessage;

  FetchTaskFailure(this.errMessage);
}
