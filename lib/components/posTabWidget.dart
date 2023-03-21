import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../constants/texts.dart';

class POSTabWidget extends StatelessWidget {
  final String tabName;
  final double width;
  const POSTabWidget({
    required this.width,
    required this.tabName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: width,
      decoration: BoxDecoration(
        color: kWhiteColor.withOpacity(0.30),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          tabName,
          style: coolGrayR12.copyWith(color: kWhiteColor),
        ),
      ),
    );
  }
}
