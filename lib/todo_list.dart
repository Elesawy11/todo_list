import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/routing/app_router.dart';
import 'package:todo_list/core/routing/routes.dart';

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
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generatRoute,
        initialRoute: Routes.homeScreen,
        home: const HomeScreen(),
      ),
    );
  }
}