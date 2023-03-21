import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SalesTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const SalesTextWidget({
    required this.subtitle,
    required this.title,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: coolGraySB14.copyWith(color: kCoolGray2),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                subtitle,
                style: coolGrayR12.copyWith(color: kCoolGray5),
              ),
            ],
          ),
          const Spacer(),
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
