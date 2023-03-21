import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class SavedBill extends StatelessWidget {
  const SavedBill({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved Bill',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: isPortrait ? 42.h : 84.h,
              color: kCoolGray3,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mon, 12 Apr 2020',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                  Text('\$123.16', style: coolGraySB12),
                ],
              ),
            ),
            const SavedBillWidget(),
            const SavedBillWidget(),
            const SavedBillWidget(),
            const SavedBillWidget(),
          ],
        ),
      ),
    );
  }
}

class SavedBillWidget extends StatelessWidget {
  const SavedBillWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: kCoolGray3),
      )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Table 1',
                style: coolGraySB14.copyWith(color: kCoolGray2),
              ),
              Text('By John Keaton',
                  style: coolGrayR14.copyWith(color: kCoolGray7)),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dine In',
                    style: coolGrayR14.copyWith(color: kCoolGray2),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  const CircleAvatar(
                    radius: 2,
                    backgroundColor: kCoolGray2,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text('\$4', style: coolGrayR14.copyWith(color: kCoolGray2)),
                ],
              ),
              Text('13:56', style: coolGrayR14.copyWith(color: kCoolGray7)),
            ],
          ),
        ],
      ),
    );
  }
}
