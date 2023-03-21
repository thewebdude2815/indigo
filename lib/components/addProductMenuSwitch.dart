import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class AddProductMenuSwitch extends StatelessWidget {
  const AddProductMenuSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kCoolGray3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Active Menu',
                style: coolGraySB14.copyWith(color: kCoolGray2),
              ),
              SizedBox(height: 4.h),
              Text(
                'Menu will be available in POS',
                style: coolGrayR12.copyWith(color: kCoolGray),
              ),
            ],
          ),
          Switch(
            value: true,
            activeColor: kIndigo50,
            activeTrackColor: kIndigo502,
            inactiveThumbColor: kCoolGray,
            inactiveTrackColor: kCoolGray6,
            onChanged: (val) {
              // setState(() {
              //   status1 = val;
              // });
            },
          ),
        ],
      ),
    );
  }
}
