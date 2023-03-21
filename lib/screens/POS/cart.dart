import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/itemNamePriceWidget.dart';
import 'package:indigo/components/posTabWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: isPortrait
              ? MediaQuery.of(context).size.height * 0.7
              : MediaQuery.of(context).size.height * 0.8,
          child: Column(
            // shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: isPortrait ? 16.w : 8.w,
                    bottom: isPortrait ? 16.w : 8.w,
                    left: 16.w),
                color: kIndigo50,
                height: isPortrait ? 70.h : 120.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    POSTabWidget(
                      tabName: 'Dine In',
                      width: 72.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    POSTabWidget(
                      tabName: 'Take Away',
                      width: 93.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    POSTabWidget(
                      tabName: 'Go-Food',
                      width: 82.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    POSTabWidget(
                      tabName: 'Grab-Food',
                      width: 94.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                ),
              ),
              const ItemNamePriceWidget(),
              const ItemNamePriceWidget(),
              const ItemNamePriceWidget(),
              const ItemNamePriceWidget(),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'Clear Cart',
                  style: coolGrayR14.copyWith(color: kRed500),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: kCoolGray3,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
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
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                color: kCoolGray3,
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 16.h),
        color: kCoolGray3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              height: isPortrait ? 349.h : 559.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Save Bill',
                                        style: coolGraySB16.copyWith(
                                            color: kCoolGray2),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: const Icon(
                                          Icons.close,
                                          color: kCoolGray,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Text(
                                    'Add Note',
                                    style:
                                        coolGrayR12.copyWith(color: kCoolGray2),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.r),
                                        topRight: Radius.circular(8.r),
                                      ),
                                      border: Border.all(color: kCoolGray6),
                                    ),
                                    child: TextField(
                                      maxLines: 6,
                                      decoration: InputDecoration(
                                          hintText: 'Eg. Table 1',
                                          hintStyle: coolGrayR14.copyWith(
                                              color: kCoolGray),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Container(
                                    height: 40.h,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    decoration: BoxDecoration(
                                      color: kCoolGray6,
                                      border: Border.all(color: kCoolGray6),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(8.r),
                                        bottomLeft: Radius.circular(8.r),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Shortcut: ',
                                          style: coolGrayR12.copyWith(
                                              color: kCoolGray),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          'Table',
                                          style: coolGrayR12.copyWith(
                                              color: kCoolGray),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          'Bill',
                                          style: coolGrayR12.copyWith(
                                              color: kCoolGray),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          'Note',
                                          style: coolGrayR12.copyWith(
                                              color: kCoolGray),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  const IndigoButton(
                                    border: false,
                                    text: 'Save',
                                    color: true,
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
                            ));
                      },
                      child: const IndigoButton(
                        border: true,
                        text: 'Save Bill',
                        color: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.routeReceiptPaid);
                      },
                      child: const IndigoButton(
                        border: true,
                        text: 'Print Bill',
                        color: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
              height: isPortrait ? 48.h : 86.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.routeSavedBill);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: kIndigo400,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                            bottomLeft: Radius.circular(8.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '3 Items',
                            style: coolGrayR14.copyWith(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: kIndigo50,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                            bottomRight: Radius.circular(8.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Subtotal = \$25',
                            style: coolGraySB14.copyWith(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
