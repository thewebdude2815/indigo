import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';

class SeperatorWidget extends StatelessWidget {
  const SeperatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      color: kCoolGray3,
    );
  }
}
