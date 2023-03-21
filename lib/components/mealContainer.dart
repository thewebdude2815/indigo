import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: kCoolGray3.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(-2, 0), // shadow offset to the left
          ),
          BoxShadow(
            color: kCoolGray3.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(2, 0), // shadow offset to the right
          ),
          BoxShadow(
            color: kCoolGray3.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2), // shadow offset to the bottom
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
            child: Image.asset(
              'assets/images/roast.png',
              height: isPortrait ? 102.h : 155.h,
              width: 108.w,
              fit: isPortrait ? BoxFit.cover : BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              'Chicken Roast',
              style: coolGraySB12,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              '\$6.98',
              style: coolGrayR12.copyWith(color: kCoolGray2),
            ),
          ),
          SizedBox(
            height: 4.h,
          )
        ],
      ),
    );
  }
}
