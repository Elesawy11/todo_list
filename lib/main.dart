import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_list/core/routing/app_router.dart';
import 'package:todo_list/todo_list.dart';

void main(List<String> args) async{
  await Hive.initFlutter();
//  await Hive.openBox();
  runApp(TodoListApp(
    appRouter: AppRouter(),
  ));
}
