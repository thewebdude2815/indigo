import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/detailTransactionPriceWidget.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/itemNamePriceWidget.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class DetailTransaction extends StatefulWidget {
  const DetailTransaction({super.key});

  @override
  State<DetailTransaction> createState() => _DetailTransactionState();
}

class _DetailTransactionState extends State<DetailTransaction> {
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

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
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routeDetailTransationVoid);
              },
              child: const DetailTransactionPriceWidget(
                isVoid: false,
              ),
            ),
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
            Expanded(
              child: GestureDetector(
                onTap: () {
                  String selectedValue = 'Cancelled Order';
                  Get.bottomSheet(StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                    return SizedBox(
                      height: selectedValue == 'Other' && isPortrait
                          ? 600.h
                          : selectedValue == 'Other' && !isPortrait
                              ? 650.h
                              : isPortrait
                                  ? 460.h
                                  : 550.h,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
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
                                    'Void Reason',
                                    style: coolGraySB16,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: kCoolGray,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Column(
                              children: [
                                RadioListTile<String>(
                                  title: Text(
                                    'Cancelled Order',
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                  value: 'Cancelled Order',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value!;
                                    });
                                  },
                                ),
                                RadioListTile<String>(
                                  title: Text(
                                    'Returned Goods',
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                  value: 'Returned Goods',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value!;
                                    });
                                  },
                                ),
                                RadioListTile<String>(
                                  title: Text(
                                    'Accidental Charge',
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                  value: 'Accidental Charge',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value!;
                                    });
                                  },
                                ),
                                RadioListTile<String>(
                                  title: Text(
                                    'Other',
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                  value: 'Other',
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 25.5.h,
                                ),
                                selectedValue == 'Other'
                                    ? Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: TextField(
                                          maxLines: 6,
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                  top: 6.h, left: 16.h),
                                              filled: true,
                                              fillColor: kWhiteColor,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                borderSide: const BorderSide(
                                                    color: kCoolGray3),
                                              ),
                                              hintText: 'Eg. your text here',
                                              hintStyle: coolGrayR14),
                                        ),
                                      )
                                    : Container(),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  child: const IndigoButton(
                                      border: false,
                                      text: 'Void Item',
                                      color: true),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                      // preferredSize: Size.fromHeight(300),
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ));
                },
                child:
                    const IndigoButton(border: true, text: 'Void', color: true),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.routeTransationFilter);
                },
                child: const IndigoButton(
                    border: true, text: 'Reprint Receipt', color: true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
