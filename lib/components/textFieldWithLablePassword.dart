import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';
import 'package:indigo/controller/passwordController.dart';

class TextFieldWithLabelPassword extends StatelessWidget {
  final PasswordController passwordController;
  const TextFieldWithLabelPassword({
    required this.passwordController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Password',
            style: coolGrayR12.copyWith(color: kCoolGray2),
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            height: isPortrait ? 62.h : 124.h,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: kCoolGray6,
              ),
            ),
            child: Obx(() {
              return TextField(
                obscureText: passwordController.hidePassword.value,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2.h, left: 16.h),
                    border: InputBorder.none,
                    hintText: 'Enter Your Password',
                    hintStyle: coolGrayR14,
                    suffixIcon: InkWell(
                      onTap: () {
                        passwordController.hidePassword.value =
                            !passwordController.hidePassword.value;
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: SvgPicture.asset(
                          passwordController.hidePassword.value
                              ? 'assets/icons/openEye.svg'
                              : 'assets/icons/closeEye.svg',
                          color: kCoolGray,
                        ),
                      ),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 28.h,
                      maxWidth: 28.9.w,
                    )),
              );
            }),
          )
        ],
      ),
    );
  }
}
