import 'package:hive_flutter/adapters.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel extends HiveObject {
  @HiveField(0)
  String content;
  @HiveField(1)
  String date;
  @HiveField(2)
  bool isDone = false;

  TaskModel({
    required this.content,
    required this.date,
    required this.isDone,
  });
}
