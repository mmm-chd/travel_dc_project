import 'package:dicoding_project/components/colors/mycolor.dart';
import 'package:dicoding_project/pages/home_page.dart';
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
        fontFamily: 'inter',
        primaryColor: MainColor.primary,
        scaffoldBackgroundColor: SupportColor.white,
      ),
      initialRoute: AppRoutes.loginPage,
      home: HomePage(),
      routes: AppPages.pages,
    );
  }
}
