import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_list/features/facourite/ui/favourite_screen.dart';
import 'package:todo_list/features/home/ui/widgets/home_screen_body.dart';
import '../../../core/theming/color.dart';
// import '../../../core/widgets/main_app_icon.dart';
import 'widgets/custom_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Widget currenScreen = const HomeScreenBody();

// final PageStorageBucket bucket = PageStorageBucket();

final PageController controller = PageController(initialPage: 0);

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    const HomeScreenBody(),
    const FavouriteScreen(),
  ];

  int selectPage = 0;
  void selectPageIndex(index) {
    setState(() {
      selectPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomActionButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        elevation: 0.5,
        height: 70.h,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: BottomNavigationBar(
              selectedItemColor: ColorManager.darkBlue,
              backgroundColor: ColorManager.mainBlue.withOpacity(0.8),
              onTap: selectPageIndex,
              currentIndex: selectPage,
              items: const [
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.home),
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.star_rate),
                  icon: Icon(Icons.star_rate_outlined),
                  label: 'Favourite',
                ),
              ]),
        ),
      ),
      body: screens[selectPage],
    );
    // return Scaffold(
    //   body: PageStorage(
    //     bucket: bucket,
    //     child: currenScreen,
    //   ),
    //   floatingActionButton: const CustomActionButton(),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   bottomNavigationBar: BottomAppBar(
    //     color: ColorManager.mainBlue.withOpacity(0.8),
    //     elevation: 0.5,
    //     height: 60.h,
    //     shape: const CircularNotchedRectangle(),
    //     notchMargin: 10,
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 18.w),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           MainAppIcon(
    //             containerColor: currenTap == 0 ? ColorManager.darkBlue : null,
    //             icon: Icons.home,
    //             onPressed: () {
    //               setState(() {
    //                 currenScreen = const HomeScreenBody();
    //                 currenTap = 0;
    //               });
    //             },
    //           ),
    //           MainAppIcon(
    //             containerColor: currenTap == 1 ? ColorManager.darkBlue : null,
    //             icon: Icons.star_rate,
    //             onPressed: () {
    //               setState(() {
    //                 currenScreen = const FavouriteScreen();
    //                 currenTap = 1;
    //               });
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

//hello
