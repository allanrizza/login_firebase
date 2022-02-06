import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_firebase/app/routes/app_pages.dart';
import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:login_firebase/app/ui/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Login Firebase',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
    ),
  );
}
