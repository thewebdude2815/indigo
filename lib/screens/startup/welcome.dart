import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/socialWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 489.h,
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
                    SizedBox(
                      height: 52.h,
                    ),
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
                  ],
                ),
              ),
              Container(
                color: kWhiteColor,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.routeSignup);
                      },
                      child: const IndigoButton(
                        text: 'Sign Up',
                        border: true,
                        color: false,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.routeLogin);
                      },
                      child: const IndigoButton(
                          text: 'Log in', border: false, color: true),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Center(
                      child: Text(
                        'OR LOGIN WITH',
                        style: coolGraySB14,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      children: const [
                        Spacer(),
                        SocialWidget(
                          isGoogle: false,
                        ),
                        Spacer(),
                        SocialWidget(
                          isGoogle: true,
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
