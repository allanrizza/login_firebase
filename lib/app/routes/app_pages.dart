import 'package:get/route_manager.dart';
import 'package:login_firebase/app/ui/android/home_page.dart';
import 'package:login_firebase/app/ui/android/initial_page.dart';
import 'package:login_firebase/app/ui/android/login_page.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialPage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
