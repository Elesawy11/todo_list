import 'package:flutter/material.dart';
import 'package:todo_list/features/home/ui/widgets/home_screen_body.dart';
import 'widgets/custom_action_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: HomeScreenBody(),
    );
  }
}
//20