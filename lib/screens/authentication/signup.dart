// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/socialWidget.dart';
import 'package:indigo/components/textFieldWithLabel.dart';
import 'package:indigo/components/textFieldWithLablePassword.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';
import 'package:indigo/controller/passwordController.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  PasswordController passwordController = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Signup',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: isPortrait ? 88.h : 120.h,
                width: double.infinity,
                color: kCoolGray3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Welcome to Indigo POS', style: coolGraySB16),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text('Let’s create new account seamlessly.',
                        style: coolGrayR12),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFieldWithLabel(
                label: 'Email',
                hintText: 'Enter Your Email',
                fieldHeight: isPortrait ? 62.h : 124.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFieldWithLabelPassword(
                  passwordController: passwordController),
              SizedBox(
                height: 52.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(Routes.routeSignupInfo);
                  },
                  child: const IndigoButton(
                    border: false,
                    text: 'Next',
                    color: true,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: Text(
                  'OR LOGIN WITH',
                  style: coolGraySB14,
                ),
              ),
              SizedBox(
                height: 32.h,
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
            ],
          ),
          SizedBox(
            height: 120.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.routeReset);
              },
              child: Text(
                'Forget Password?',
                style: coolGraySB14.copyWith(color: kIndigo50),
              ),
            ),
          ),
          SizedBox(
            height: 38.h,
          ),
        ],
      ),
    );
  }
}
