import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/textFieldWithLabel.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Accounts Information',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: isPortrait ? 140.h : 280.h,
              color: kCoolGray3,
              child: Row(
                children: [
                  SizedBox(
                    width: 142.w,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: isPortrait ? 40 : 60,
                        backgroundImage:
                            const AssetImage('assets/images/logoHok.png'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset('assets/icons/edit.svg'),
                    ],
                  ),
                  SizedBox(
                    width: 103.98.w,
                  ),
                  // const Spacer()
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWithLabel(
                    hintText: 'Eg. Account Name',
                    label: 'Account Name',
                    fieldHeight: isPortrait ? 62.h : 102.h),
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWithLabel(
                    hintText: 'Eg. Account Email',
                    label: 'Email',
                    fieldHeight: isPortrait ? 62.h : 102.h),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reset Password',
                      style: coolGraySB14.copyWith(color: kIndigo50),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: const IndigoButton(border: false, text: 'Save', color: true),
      ),
    );
  }
}
