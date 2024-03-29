import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/constants.dart';

import '../../logic/cubit/note_cubit.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.colorsList.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<NoteCubit>(context).color =
                    Constants.colorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: Constants.colorsList[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        }),
      ),
    );
  }
}
