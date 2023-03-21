import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final String hintText;
  final double fieldHeight;
  const TextFieldWithLabel({
    required this.hintText,
    required this.label,
    required this.fieldHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: coolGrayR12.copyWith(color: kCoolGray2),
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            height: fieldHeight,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: kCoolGray6,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 16.h),
                  filled: false,
                  fillColor: kWhiteColor,
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: coolGrayR14),
            ),
          )
        ],
      ),
    );
  }
}
