import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/textFieldWithLabel.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SignupInfo extends StatelessWidget {
  const SignupInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
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
            height: 88.h,
            width: double.infinity,
            color: kCoolGray3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Text('Business Information', style: coolGraySB16),
                SizedBox(
                  height: 4.h,
                ),
                Text("Let’s create new account seamlessly.",
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
            label: 'Business Name',
            hintText: 'Eg. your text here',
            fieldHeight: 62.h,
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobile Phone',
                  style: coolGrayR12.copyWith(color: kCoolGray2),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: 62.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          margin: EdgeInsets.only(right: 8.w),
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: kCoolGray3,
                            border: Border.all(color: kCoolGray6),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                              bottomLeft: Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+62",
                              style: coolGrayR14.copyWith(color: kCoolGray2),
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.only(top: 6.h, left: 16.h),
                        filled: true,
                        fillColor: kWhiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(color: kCoolGray6),
                        ),
                        hintText: 'Enter Your Phone',
                        hintStyle: coolGrayR14),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'City',
                  style: coolGrayR12.copyWith(color: kCoolGray2),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: 62.h,
                  child: DropdownButtonFormField<String>(
                    iconDisabledColor: kCoolGray,
                    iconEnabledColor: kCoolGray,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kWhiteColor,
                      hintText: 'Select Your City',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: kCoolGray6,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'option1',
                        child: Text('Option 1'),
                      ),
                      DropdownMenuItem(
                        value: 'option2',
                        child: Text('Option 2'),
                      ),
                      DropdownMenuItem(
                        value: 'option3',
                        child: Text('Option 3'),
                      ),
                    ],
                    onChanged: (String? value) {
                      // Do something when the dropdown value changes
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: coolGrayR12.copyWith(color: kCoolGray2),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  // height: 62.h,
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(top: 12.h, left: 16.h),
                        filled: true,
                        fillColor: kWhiteColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(color: kCoolGray6),
                        ),
                        hintText: 'Enter Your Address',
                        hintStyle: coolGrayR14),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.routeBNB);
              },
              child: const IndigoButton(
                border: false,
                text: 'Done',
                color: true,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
