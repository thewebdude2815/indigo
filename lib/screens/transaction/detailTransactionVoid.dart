import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/detailTransactionPriceWidget.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/itemNamePriceWidget.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class DetailTransactionVoid extends StatelessWidget {
  const DetailTransactionVoid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          '#123456',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailTransactionPriceWidget(
              isVoid: true,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'VOID',
                        style: coolGraySB12.copyWith(color: kCoolGray),
                      ),
                      Text(
                        'Mon, 12 Apr 2020 20:49',
                        style: coolGraySB12.copyWith(color: kCoolGray),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/void.svg',
                            color: kRed500,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Cancelled Order',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                      Text(
                        'By John Keaton',
                        style: coolGrayR14.copyWith(color: kCoolGray2),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.5.h,
                  ),
                ],
              ),
            ),
            const SeperatorWidget(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PAYMENT',
                        style: coolGraySB12.copyWith(color: kCoolGray),
                      ),
                      Text(
                        'Mon, 12 Apr 2020 20:49',
                        style: coolGraySB12.copyWith(color: kCoolGray),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/cashDineIn.svg',
                            color: kGreen400,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Cash',
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
                          Text(
                            'Dine in',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                      Text(
                        'By John Keaton',
                        style: coolGrayR14.copyWith(color: kCoolGray2),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.5.h,
                  ),
                ],
              ),
            ),
            const SeperatorWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.w, right: 16.w, top: 8.h, bottom: 24.h),
                  child: Text(
                    'ITEMS',
                    style: coolGraySB12.copyWith(color: kCoolGray),
                  ),
                ),
                Column(
                  children: const [
                    ItemNamePriceWidget(),
                    ItemNamePriceWidget(),
                    ItemNamePriceWidget(),
                  ],
                ),
                const SeperatorWidget(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, top: 8.h, bottom: 24.h),
                      child: Text(
                        'TOTAL',
                        style: coolGraySB12.copyWith(color: kCoolGray),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Subtotal',
                                style: coolGrayR14.copyWith(color: kCoolGray2),
                              ),
                              const Spacer(),
                              Text(
                                '\$25',
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
                                'Tax (10%)',
                                style: coolGrayR14.copyWith(color: kCoolGray2),
                              ),
                              const Spacer(),
                              Text(
                                '\$2.5',
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
                                'Total',
                                style: coolGrayR14.copyWith(color: kCoolGray2),
                              ),
                              const Spacer(),
                              Text(
                                '\$27.5',
                                style: coolGraySB14.copyWith(color: kCoolGray2),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const Divider(
                            color: kCoolGray8,
                          ),
                          SizedBox(
                            height: 8.h,
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
                                '\$44',
                                style: coolGrayR14.copyWith(color: kCoolGray2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Row(
          children: [
            const Expanded(
              child: IndigoButton(border: true, text: 'Void', color: true),
            ),
            SizedBox(
              width: 8.w,
            ),
            const Expanded(
              child: IndigoButton(
                  border: true, text: 'Reprint Receipt', color: false),
            )
          ],
        ),
      ),
    );
  }
}
