import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/screens/home/home_screen.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) =>const CustomNavBar(currentIndex: 0)));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.themeColor,
          body: Center(
            child: CustomImage(
              imageSrc: AppIcons.logoIcon,
              size: 160,
              imageColor: AppColors.whiteColor,
            ),
          ),
        ));
  }
}