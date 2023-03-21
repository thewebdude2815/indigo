import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: kCoolGray3,
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: Text(
                    'TOTAL BILL',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: Text(
                    '\$56',
                    style: inter32semiBold,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'CHOOSE PAYMENT METHOD',
              style: coolGraySB12.copyWith(color: kCoolGray),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeCashPayment);
                    },
                    child: Container(
                      height: 108.h,
                      decoration: BoxDecoration(
                          color: kGreen100,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 12.w),
                            child: Text(
                              'Cash',
                              style: coolGraySB16.copyWith(color: kGreen700),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -10,
                            child: SvgPicture.asset(
                              'assets/icons/dollar.svg',
                              height: 50.h,
                              color: kGreen300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: Container(
                    height: 108.h,
                    decoration: BoxDecoration(
                        color: kTeal100,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 12.w),
                          child: Text(
                            'Debit',
                            style: coolGraySB16.copyWith(color: kTeal700),
                          ),
                        ),
                        Positioned(
                          bottom: -8,
                          right: -10,
                          child: SvgPicture.asset(
                            'assets/icons/card.svg',
                            height: 50.h,
                            color: kTeal300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        SizedBox(
                          height: isPortrait ? 549.h : 649.h,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 4.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                    color: kCoolGray4,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                height: 4.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                    color: kCoolGray4,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Bill',
                                      style: coolGraySB16,
                                    ),
                                    Text(
                                      '\$24',
                                      style: coolGraySB16,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Image.asset(
                                  'assets/images/qr.png',
                                  height: 335.h,
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              const Center(
                                child: Text(
                                    'Please ask your customer to scan this QR Code'),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: const IndigoButton(
                                  border: true,
                                  text: 'Print QR Code',
                                  color: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // preferredSize: Size.fromHeight(300),
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      );
                    },
                    child: Container(
                      height: 108.h,
                      decoration: BoxDecoration(
                          color: kBlue100,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 12.w),
                            child: Text(
                              'Scan QR',
                              style: coolGraySB16.copyWith(color: kBlue700),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -10,
                            child: SvgPicture.asset(
                              'assets/icons/qr.svg',
                              height: 50.h,
                              color: kBlue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeNonCashPayment);
                    },
                    child: Container(
                      height: 108.h,
                      decoration: BoxDecoration(
                          color: kPurple100,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 12.w),
                            child: Text(
                              'Credit \nCard',
                              style: coolGraySB16.copyWith(color: kPurple700),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -10,
                            child: SvgPicture.asset(
                              'assets/icons/dollar.svg',
                              height: 50.h,
                              color: kPurple300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: Container(
                    height: 108.h,
                    decoration: BoxDecoration(
                        color: kOrange100,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 12.w),
                          child: Text(
                            'Paypal',
                            style: coolGraySB16.copyWith(color: kOrange700),
                          ),
                        ),
                        Positioned(
                          bottom: -8,
                          right: -10,
                          child: SvgPicture.asset(
                            'assets/icons/card.svg',
                            height: 50.h,
                            color: kOrange300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeTransSuccess);
                    },
                    child: Container(
                      height: 108.h,
                      decoration: BoxDecoration(
                          color: kRed100,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 12.w),
                            child: Text(
                              'Alipay',
                              style: coolGraySB16.copyWith(color: kRed700),
                            ),
                          ),
                          Positioned(
                            bottom: -8,
                            right: -10,
                            child: SvgPicture.asset(
                              'assets/icons/qr.svg',
                              height: 50.h,
                              color: kRed300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
