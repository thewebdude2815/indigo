import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class DetailTransactionPriceWidget extends StatelessWidget {
  const DetailTransactionPriceWidget({
    super.key,
    required this.isVoid,
  });

  final bool isVoid;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      height: isPortrait ? 80.h : 160.h,
      color: kCoolGray3,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isVoid ? '\$-56' : '\$56',
            style: inter32semiBold.copyWith(color: kCoolGray2),
          ),
          Container(
            height: isPortrait ? 24.h : 48.h,
            width: 44.w,
            decoration: BoxDecoration(
              color: isVoid ? kRed50 : kGreen50,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(color: isVoid ? kRed500 : kGreen400),
            ),
            child: Center(
              child: Text(
                isVoid ? 'Void' : 'Paid',
                style:
                    coolGraySB12.copyWith(color: isVoid ? kRed500 : kGreen400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
