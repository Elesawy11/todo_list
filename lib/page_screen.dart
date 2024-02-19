// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:todo_list/features/facourite/ui/favourite_screen.dart';

// import 'features/home/ui/home_screen.dart';

// class PageScreen extends StatefulWidget {
//   const PageScreen({super.key});

//   @override
//   State<PageScreen> createState() => _PageScreenState();
// }
// final PageController pageController = PageController(initialPage: 0);

// class _PageScreenState extends State<PageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: pageController,
//           onPageChanged: (int) {
//           print('Page Changes to index $int');
//         },
//       children:[
//             SafeArea(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12.w),
//               child:const HomeScreen()
//             ),
//           ),
//           SafeArea(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12.w),
//               child:const FavouriteScreen()
//             ),
//           ),
//           ] ,
//     );
//   }
// }