import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class BizInfoWidgets extends StatelessWidget {
  final bool showShadow;
  const BizInfoWidgets({
    required this.showShadow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: showShadow
            ? [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1)
              ]
            : [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TODAY SALES',
            style: coolGraySB12.copyWith(color: kCoolGray5),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            '\$322',
            style: inter20semiBold.copyWith(color: kCoolGray2),
          ),
        ],
      ),
    );
  }
}
