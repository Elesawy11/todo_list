import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/routing/app_router.dart';
import 'package:todo_list/core/routing/routes.dart';
import 'package:todo_list/features/add_note.dart/logic/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:todo_list/features/add_task/logic/cubits/fetch_task/fetch_task_cubit.dart';

import 'features/home/ui/home_screen.dart';

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FetchNoteCubit()..fetchNotes(),
          ),
          BlocProvider(
            create: (context) => FetchTaskCubit()..fetchTasks(),
          ),
          
        ],
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Poppins'),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generatRoute,
          initialRoute: Routes.homeScreen,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
