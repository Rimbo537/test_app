import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test_app/router/app_pages.dart';
import 'package:test_app/ui/screens/main/bottom_notifier.dart';
import 'package:test_app/ui/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNotifier(),
        )
      ],
      child: GetMaterialApp(
        title: 'Test App',
        theme: ThemeData(
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: Colors.transparent),
        ),
        home: const MainScreen(),
        getPages: AppPages.routeswer,
      ),
    );
  }
}
