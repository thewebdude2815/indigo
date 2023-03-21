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

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  PasswordController passwordController = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: Column(
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
                Text('Relax we will handle it.', style: coolGraySB16),
                SizedBox(
                  height: 4.h,
                ),
                Text('But we need your email first.', style: coolGrayR12),
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
            height: 56.h,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.routeCreateNewPassword);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: IndigoButton(
                border: false,
                text: 'Reset Password',
                color: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
