import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: isPortrait
                    ? MediaQuery.of(context).size.height * 0.50
                    : MediaQuery.of(context).size.height * 0.55,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: kIndigo50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Icon(
                      Icons.close,
                      size: 30.h,
                      color: kCoolGray,
                    ),
                    const Spacer(),
                    Center(
                      child: CircleAvatar(
                        radius: 86.r,
                        backgroundColor: kWhiteColor.withOpacity(0.2),
                        child: CircleAvatar(
                          radius: 66.r,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icons/tick.svg',
                              color: kIndigo50,
                              width: isPortrait ? 32.w : 20.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: Text(
                        '\$56',
                        style: inter32semiBold.copyWith(color: kWhiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Center(
                      child: Text(
                        'TRANSACTION SUCCESS',
                        style: coolGraySB16.copyWith(color: kWhiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Center(
                      child: Text(
                        '16:20, 16 May 2020',
                        style: coolGrayR14.copyWith(color: kWhiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                  ],
                ),
              ),
              Container(
                height: isPortrait
                    ? MediaQuery.of(context).size.height * 0.45
                    : MediaQuery.of(context).size.height * 0.65,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: kWhiteColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order ID',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          '#25234123',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Payment Method',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          'Cash',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Type',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          'Dine In',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Received',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          '\$100',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Change',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        const Spacer(),
                        Text(
                          '\$12',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const IndigoButton(
                      border: true,
                      text: 'Reprint Receipt',
                      color: false,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const IndigoButton(
                      border: false,
                      text: 'Start New Sale',
                      color: true,
                    ),
                    SizedBox(
                      height: 24.h,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
