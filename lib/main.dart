import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test1/pages/home_page.dart';
import 'package:test1/services/locator.dart';
import 'package:test1/services/navigation_service.dart';

import 'resources/app_theme.dart';
import 'routes/app_router.dart';

void main() {
  setupLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFF6F6F6),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test1',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: theme(),
      home: Navigator(
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomePage.routeName,
      ),
    );
  }
}

