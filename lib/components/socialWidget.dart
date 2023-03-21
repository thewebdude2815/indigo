import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SocialWidget extends StatelessWidget {
  final bool isGoogle;
  const SocialWidget({
    super.key,
    required this.isGoogle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          isGoogle ? 'assets/icons/google.svg' : 'assets/icons/facebook.svg',
          height: 37.h,
          width: 37.w,
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          isGoogle ? 'Google' : 'Facebook',
          style: coolGraySB14.copyWith(color: kCoolGray2),
        )
      ],
    );
  }
}
