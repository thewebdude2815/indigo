import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SalesReportPaymentWidget extends StatelessWidget {
  final bool upperBorder;
  const SalesReportPaymentWidget({
    required this.upperBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          top: !upperBorder
              ? BorderSide.none
              : const BorderSide(color: kCoolGray3, width: 0),
          bottom: const BorderSide(color: kCoolGray3),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 8.r,
            backgroundColor: kGreen400,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            'Cash (70%)',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          ),
          const Spacer(),
          Text(
            '2',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          ),
          const Spacer(),
          Text(
            '\$140',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          ),
        ],
      ),
    );
  }
}
