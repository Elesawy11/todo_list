// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../core/theming/color.dart';

// class CustomButtonAppBar extends StatefulWidget {
//   const CustomButtonAppBar({
//     super.key,
//   });
//   static PageController pageController = PageController(initialPage: 0);

//   @override
//   State<CustomButtonAppBar> createState() => _CustomButtonAppBarState();
// }

// class _CustomButtonAppBarState extends State<CustomButtonAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//         color: ColorManager.mainBlue.withOpacity(0.8),
//         elevation: 0.5,
//         height: 50.h,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 10,
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 18.w),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   setState(() {
//                     // pageController.jumpToPage(0);
//                     currenScreen = const HomeScreenBody();
//                     currenTap = 0;
//                   });
//                 },
//                 // () => context.pushNamedAndRemoveUntil(
//                 //     Routes.homeScreen,
//                 //     predicate: (Route<dynamic> route) => false),
//                 icon: const Icon(
//                   Icons.home,
//                   size: 30,
//                   color: Colors.white,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   setState(() {
//                     currenScreen = const FavouriteScreen();
//                     currenTap = 1;
//                   });
//                 },
//                 icon: const Icon(
//                   Icons.star_rate,
//                   size: 30,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
    
//   }
// }
