import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class ItemNamePriceWidget extends StatelessWidget {
  const ItemNamePriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kCoolGray3),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                  text: '1',
                  style: coolGraySB14.copyWith(color: kIndigo50),
                  children: [
                    TextSpan(
                      text: ' X',
                      style: coolGraySB14.copyWith(color: kCoolGray),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              'Chicken Roast',
              textAlign: TextAlign.left,
              style: coolGrayR14.copyWith(color: kCoolGray2),
            ),
          ),
          Expanded(
            child: Text(
              '\$5',
              textAlign: TextAlign.right,
              style: coolGraySB14.copyWith(color: kCoolGray2),
            ),
          ),
        ],
      ),
    );
  }
}
