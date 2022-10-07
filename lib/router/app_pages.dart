import 'package:get/get.dart';
import 'package:test_app/router/route_paths.dart';
import 'package:test_app/ui/screens/card/card_screen.dart';
import 'package:test_app/ui/screens/main/main_screen.dart';

class AppPages {
  static final routeswer = [
    GetPage(
      name: rootRoute,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: cardRoute,
      page: () => const CardScreen(),
    ),
  ];
}
