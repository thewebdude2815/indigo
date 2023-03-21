import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SalesReportFoodWidget extends StatelessWidget {
  final bool showBorder;
  const SalesReportFoodWidget({
    required this.showBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom:
              BorderSide(color: showBorder ? kCoolGray3 : Colors.transparent),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/roast.png',
            height: isPortrait ? 48.h : 96.h,
            width: 48.w,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            'Chicken Roast',
            style: coolGraySB14.copyWith(color: kCoolGray2),
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
