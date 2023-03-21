import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.routeWelcome);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: kIndigo50,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/pattern1.png',
                  height: 150.h,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                height: 120.h,
                width: 120.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Indigo POS',
                style: inter24semiBold,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'assets/images/pattern2.png',
                  height: 150.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
