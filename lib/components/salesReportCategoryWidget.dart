import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SalesReportCategoryWidget extends StatelessWidget {
  final bool showBorder;
  const SalesReportCategoryWidget({
    required this.showBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom:
              BorderSide(color: showBorder ? kCoolGray3 : Colors.transparent),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Chicken Roast',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          ),
          const Spacer(),
          Text(
            '\$100',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          )
        ],
      ),
    );
  }
}
