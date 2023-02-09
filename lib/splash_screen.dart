import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:semi11/screens/home/home_screen.dart';
import 'package:semi11/screens/home/home_screen_controller.dart';
import 'package:semi11/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlack,
      body: AnimatedSplashScreen(
        splashIconSize: 250,
        duration: 1000,
        pageTransitionType: PageTransitionType.fade,
        splash: Image.asset(
          appLogoTransparent,
        ),
        nextScreen: GetBuilder<HomeScreenController>(
          init: HomeScreenController(),
          builder: (_) => HomeScreen(),
        ),
      ),
    );
  }
}
