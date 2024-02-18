import 'package:flutter/material.dart';
import 'package:todo_list/core/routing/app_router.dart';
import 'package:todo_list/todo_list.dart';

void main(List<String> args) {
  runApp(TodoListApp(
    appRouter: AppRouter(),
  ));
}
