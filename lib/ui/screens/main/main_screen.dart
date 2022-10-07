import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:test_app/resources/app_icons.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';
import 'package:test_app/ui/screens/main/bottom_notifier.dart';
import 'package:test_app/ui/widgets/history/history_widget.dart';
import 'package:test_app/ui/widgets/main/main_widget.dart';
import 'package:test_app/ui/widgets/map/map_widget.dart';
import 'package:test_app/ui/widgets/more/more_widget.dart';
import 'package:test_app/ui/widgets/qr_code/qr_code_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    MainWidget(),
    HistoryWidget(),
    QrCodeWidget(),
    MapWidget(),
    MoreWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<BottomNotifier>(context);
    int currentScreenIndex = _screenindexprovider.childIndex;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.bgBottomNavBarColor,
            AppColors.bgAppBottomColor,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _widgetOptions[currentScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.bgBottomNavBarColor,
          onTap: (value) => _screenindexprovider.updateChildIndex(value),
          selectedLabelStyle: const TextStyle(
            color: AppColors.selectedButtonColor,
          ),
          unselectedLabelStyle: const TextStyle(
            color: AppColors.unselectedButtonColor,
          ),
          selectedItemColor: AppColors.selectedButtonColor,
          unselectedItemColor: AppColors.unselectedButtonColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.homeIcon,
                color: currentScreenIndex == 0
                    ? AppColors.selectedButtonColor
                    : AppColors.unselectedButtonColor,
              ),
              label: BottomNavBarStrings.main,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.historyIcon,
                color: currentScreenIndex == 1
                    ? AppColors.selectedButtonColor
                    : AppColors.unselectedButtonColor,
              ),
              label: BottomNavBarStrings.history,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.qrCodeIcon,
                color: currentScreenIndex == 2
                    ? AppColors.selectedButtonColor
                    : AppColors.unselectedButtonColor,
              ),
              label: BottomNavBarStrings.qrCode,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.mapIcon,
                color: currentScreenIndex == 3
                    ? AppColors.selectedButtonColor
                    : AppColors.unselectedButtonColor,
              ),
              label: BottomNavBarStrings.map,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.moreIcon,
                color: currentScreenIndex == 4
                    ? AppColors.selectedButtonColor
                    : AppColors.unselectedButtonColor,
              ),
              label: BottomNavBarStrings.more,
            ),
          ],
        ),
      ),
    );
  }
}
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   MainWidget(),
//   //   HistoryWidget(),
//   //   QrCodeWidget(),
//   //   MapWidget(),
//   //   MoreWidget(),
//   // ];

//   // get childIndex => null;
//   int _selectedIndex = 0;
//   PageController pageController = PageController();

//   void onTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     pageController.jumpToPage(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<BottomNotifier>(
//       create: (_) => BottomNotifier(),
//       builder: (context, child) {
//         return Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 AppColors.bgBottomNavBarColor,
//                 AppColors.bgAppBottomColor,
//               ],
//             ),
//           ),
//           child: Scaffold(
//             backgroundColor: Colors.transparent,
//             body: PageView(
//               controller: pageController,
//               children: const [
//                 MainWidget(),
//                 HistoryWidget(),
//                 QrCodeWidget(),
//                 MapWidget(),
//                 MoreWidget(),
//               ],
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//               currentIndex: _selectedIndex,
//               iconSize: 24,
//               type: BottomNavigationBarType.fixed,
//               backgroundColor: AppColors.bgBottomNavBarColor,
//               onTap: onTapped,
//               selectedLabelStyle: const TextStyle(
//                 color: AppColors.selectedButtonColor,
//               ),
//               unselectedLabelStyle: const TextStyle(
//                 color: AppColors.unselectedButtonColor,
//               ),
//               selectedItemColor: AppColors.selectedButtonColor,
//               unselectedItemColor: AppColors.unselectedButtonColor,
//               items: [
//                 BottomNavigationBarItem(
//                   activeIcon: SvgPicture.asset(
//                     AppIcons.homeIcon,
//                     color: AppColors.selectedButtonColor,
//                   ),
//                   icon: SvgPicture.asset(
//                     AppIcons.homeIcon,
//                     color: AppColors.unselectedButtonColor,
//                   ),
//                   label: BottomNavBarStrings.main,
//                 ),
//                 BottomNavigationBarItem(
//                   activeIcon: SvgPicture.asset(
//                     AppIcons.historyIcon,
//                     color: AppColors.selectedButtonColor,
//                   ),
//                   icon:
//                   SvgPicture.asset(
//                     AppIcons.historyIcon,
//                     color: AppColors.unselectedButtonColor,
//                   ),
//                   label: BottomNavBarStrings.history,
//                 ),
//                 BottomNavigationBarItem(
//                   activeIcon: SvgPicture.asset(
//                     AppIcons.qrCodeIcon,
//                     color: AppColors.selectedButtonColor,
//                   ),
//                   icon: SvgPicture.asset(
//                     AppIcons.qrCodeIcon,
//                     color: AppColors.unselectedButtonColor,
//                   ),
//                   label: BottomNavBarStrings.qrCode,
//                 ),
//                 BottomNavigationBarItem(
//                   activeIcon: SvgPicture.asset(
//                     AppIcons.mapIcon,
//                     color: AppColors.selectedButtonColor,
//                   ),
//                   icon: SvgPicture.asset(
//                     AppIcons.mapIcon,
//                     color: AppColors.unselectedButtonColor,
//                   ),
//                   label: BottomNavBarStrings.map,
//                 ),
//                 BottomNavigationBarItem(
//                   activeIcon: SvgPicture.asset(
//                     AppIcons.moreIcon,
//                     color: AppColors.selectedButtonColor,
//                   ),
//                   icon: SvgPicture.asset(
//                     AppIcons.moreIcon,
//                     color: AppColors.unselectedButtonColor,
//                   ),
//                   label: BottomNavBarStrings.more,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

//  Container(
//               alignment: Alignment.center,
//               child: Center(
//                 child: _widgetOptions[
//                     Provider.of<BottomNotifier>(context).childIndex],
//               ),
//             ),