import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/routes/app_routes.dart';
import 'package:login_firebase/app/ui/android/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SplashScreen(
            seconds: 5,
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.green.shade300, Colors.green.shade600,],

            ),
            navigateAfterSeconds: Routes.LOGIN,
            loaderColor: Colors.transparent,
          ),
          Container(
            margin: EdgeInsets.all(140),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/fire.png"),
              fit: BoxFit.contain,
              )
            ),

          ),
        ]
    );
  }
}
