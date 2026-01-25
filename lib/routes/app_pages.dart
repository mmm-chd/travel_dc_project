import 'package:dicoding_project/pages/detail_page.dart';
import 'package:dicoding_project/pages/home_page.dart';
import 'package:dicoding_project/pages/introScreen_page.dart';
import 'package:dicoding_project/pages/log_page.dart';
import 'package:dicoding_project/pages/splash_page.dart';
import 'package:dicoding_project/routes/app_routes.dart';

class AppPages {
  static final pages = {
    AppRoutes.homePage: (context) => HomePage(),
    AppRoutes.detailPage: (context) => DetailPage(),
    AppRoutes.loginPage: (context) => LogPage(),
    AppRoutes.splashscreenPage: (context) => IntroscreenPage(),
    AppRoutes.splashPage: (context) => SplashPage(),
  };
}
