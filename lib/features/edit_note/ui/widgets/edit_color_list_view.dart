import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/core/helpers/constants.dart';
import 'package:todo_list/core/theming/color.dart';
import 'package:todo_list/features/add_note.dart/logic/models/note_model.dart';

import '../../../add_note.dart/ui/widgets/color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
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
                widget.noteModel.color = Constants.colorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                backgroundColor: ColorManager.darkBlue,
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
