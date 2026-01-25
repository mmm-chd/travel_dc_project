import 'package:dicoding_project/configs/themes_color.dart';
import 'package:dicoding_project/routes/app_pages.dart';
import 'package:dicoding_project/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        primaryColor: PColor.primary,
        scaffoldBackgroundColor: HColor.bgWhite,
        colorScheme: ColorScheme.light(
          surface: Colors.white,
          background: Colors.white,
          primary: PColor.primary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: HColor.bgWhite,
          elevation: 0,
          surfaceTintColor: HColor.bgWhite,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          surfaceTintColor: Colors.white,
        ),
      ),
      initialRoute: AppRoutes.splashPage,
      routes: AppPages.pages,
    );
  }
}
