import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/itemsProductWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  bool isProduct = true;
  bool isEmpty = false;
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Items',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            // height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            color: kIndigo50,
            child: Container(
              height: isPortrait ? 40.h : 60.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: kWhiteColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isProduct = true;
                        });
                      },
                      child: Container(
                        height: isPortrait ? 32.h : 52.h,
                        decoration: BoxDecoration(
                            color: isProduct ? kWhiteColor : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Center(
                          child: Text(
                            'Product',
                            style: isProduct
                                ? coolGraySB12.copyWith(color: kIndigo50)
                                : coolGrayR12.copyWith(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isProduct = false;
                        });
                      },
                      child: Container(
                        height: isPortrait ? 32.h : 52.h,
                        decoration: BoxDecoration(
                            color:
                                !isProduct ? kWhiteColor : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Center(
                          child: Text(
                            'Category',
                            style: !isProduct
                                ? coolGraySB12.copyWith(color: kIndigo50)
                                : coolGrayR12.copyWith(color: kWhiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          isEmpty
              ? Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/emptyPOS.svg',
                          height: 108.h,
                          width: 108.w,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'You have no items yet.',
                        style: coolGrayR14.copyWith(color: kCoolGray2),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: const [
                          Spacer(),
                          Expanded(
                            flex: 2,
                            child: IndigoButton(
                              border: false,
                              text: 'Add New Item',
                              color: true,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                )
              : isProduct
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: isPortrait ? 48.h : 96.h,
                              color: kCoolGray3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FocusScope(
                                      child: Focus(
                                        onFocusChange: (focus) {
                                          if (focus) {
                                            setState(() {
                                              isFocused = true;
                                            });
                                          } else {
                                            setState(() {
                                              isFocused = false;
                                            });
                                          }
                                        },
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Search Product",
                                            hintStyle: coolGrayR14.copyWith(
                                                color: kCoolGray),
                                            prefixIcon: Icon(
                                              !isFocused
                                                  ? Icons.search
                                                  : Icons.close,
                                              color: kCoolGray,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(Routes.routeAddProduct);
                                    },
                                    child: Container(
                                      height: isPortrait ? 24.h : 48.h,
                                      width: isPortrait ? 24.h : 48.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 12.h),
                                      decoration: BoxDecoration(
                                        color: kIndigo50,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: isPortrait ? 22.h : 44.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return const ItemsProductWidget();
                                })
                          ],
                        ),
                      ),
                    )
                  : Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: isPortrait ? 48.h : 96.h,
                              color: kCoolGray3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FocusScope(
                                      child: Focus(
                                        onFocusChange: (focus) {
                                          if (focus) {
                                            setState(() {
                                              isFocused = true;
                                            });
                                          } else {
                                            setState(() {
                                              isFocused = false;
                                            });
                                          }
                                        },
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Search Category",
                                            hintStyle: coolGrayR14.copyWith(
                                                color: kCoolGray),
                                            prefixIcon: Icon(
                                              !isFocused
                                                  ? Icons.search
                                                  : Icons.close,
                                              color: kCoolGray,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.bottomSheet(
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w),
                                            height: isPortrait ? 249.h : 450.h,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 16.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Add Category',
                                                      style:
                                                          coolGraySB16.copyWith(
                                                              color:
                                                                  kCoolGray2),
                                                    ),
                                                    const Icon(
                                                      Icons.close,
                                                      color: kCoolGray,
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 16.h,
                                                ),
                                                Text(
                                                  'Category Name',
                                                  style: coolGrayR12.copyWith(
                                                      color: kCoolGray2),
                                                ),
                                                SizedBox(
                                                  height: 4.w,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    hintText: 'Eg. Food',
                                                    hintStyle:
                                                        coolGrayR14.copyWith(
                                                            color: kCoolGray),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      borderSide:
                                                          const BorderSide(
                                                              color:
                                                                  kCoolGray6),
                                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                          ));
                                    },
                                    child: Container(
                                      height: isPortrait ? 24.h : 48.h,
                                      width: isPortrait ? 24.h : 48.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 12.h),
                                      decoration: BoxDecoration(
                                        color: kIndigo50,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: isPortrait ? 22.h : 44.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 17.5.h),
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(color: kCoolGray3),
                              )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Favorite',
                                    style: coolGraySB14.copyWith(
                                        color: kCoolGray2),
                                  ),
                                  SvgPicture.asset('assets/icons/heart.svg'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 17.5.h),
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(color: kCoolGray3),
                              )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Food',
                                    style: coolGraySB14.copyWith(
                                        color: kCoolGray2),
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/hamburger.svg'),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 17.5.h),
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(color: kCoolGray3),
                              )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Beverages',
                                    style: coolGraySB14.copyWith(
                                        color: kCoolGray2),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.bottomSheet(
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w),
                                            height: isPortrait ? 249.h : 450.h,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 16.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Edit Category',
                                                      style:
                                                          coolGraySB16.copyWith(
                                                              color:
                                                                  kCoolGray2),
                                                    ),
                                                    const Icon(
                                                      Icons.close,
                                                      color: kCoolGray,
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 16.h,
                                                ),
                                                Text(
                                                  'Category Name',
                                                  style: coolGrayR12.copyWith(
                                                      color: kCoolGray2),
                                                ),
                                                SizedBox(
                                                  height: 4.w,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    hintText: 'Eg. Food',
                                                    hintStyle:
                                                        coolGrayR14.copyWith(
                                                            color: kCoolGray),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      borderSide:
                                                          const BorderSide(
                                                              color:
                                                                  kCoolGray6),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 24.h,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    SvgPicture.asset(
                                                        'assets/icons/delete.svg'),
                                                    SizedBox(
                                                      width: 16.w,
                                                    ),
                                                    const Expanded(
                                                      flex: 2,
                                                      child: IndigoButton(
                                                        border: false,
                                                        text: 'Save',
                                                        color: true,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          // preferredSize: Size.fromHeight(300),
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                          ));
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/hamburger.svg'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
        ],
      ),
    );
  }
}
