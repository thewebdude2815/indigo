import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class MyBizHomeWidget extends StatelessWidget {
  final String name;
  final String icon;
  const MyBizHomeWidget({
    required this.icon,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kCoolGray3),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: kCoolGray,
            height: isPortrait ? 16.h : 32.h,
            width: isPortrait ? 16.w : 32.w,
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            name,
            style: coolGraySB14.copyWith(color: kCoolGray2),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: kCoolGray,
            size: 20,
          )
        ],
      ),
    );
  }
}
