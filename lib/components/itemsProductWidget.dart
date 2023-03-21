import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class ItemsProductWidget extends StatelessWidget {
  const ItemsProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: kCoolGray3),
      )),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food',
                style: coolGraySB14.copyWith(color: kCoolGray2),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Food',
                style: coolGrayR12.copyWith(color: kCoolGray),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$8.99',
            style: coolGrayR14.copyWith(color: kCoolGray2),
          )
        ],
      ),
    );
  }
}
