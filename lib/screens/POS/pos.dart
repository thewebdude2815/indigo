import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/mealContainer.dart';
import 'package:indigo/components/posTabWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';
import 'package:indigo/controller/mealController.dart';

class POS extends StatefulWidget {
  const POS({super.key});

  @override
  State<POS> createState() => _POSState();
}

class _POSState extends State<POS> {
  MealController mealController = Get.put(MealController());
  bool isFocused = false;
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kIndigo50,
          leadingWidth: 50.w,
          leading: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/logoHok.png'),
            ),
          ),
          title: Text(
            'Indigo POS',
            style: inter20semiBold,
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routePayment);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: SvgPicture.asset(
                  'assets/icons/board.svg',
                  height: isPortrait ? 26.h : 52.h,
                  width: 22.w,
                ),
              ),
            ), // icon on the right
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
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
                  Container(
                    height: 32.h,
                    width: isPortrait ? 107.w : 87.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: kPink500,
                          size: 14,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Favorite',
                          style: coolGrayR12.copyWith(color: kCoolGray2),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  POSTabWidget(
                    tabName: 'All',
                    width: isPortrait ? 46.w : 32.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  POSTabWidget(
                    tabName: 'Food',
                    width: isPortrait ? 61.w : 47.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  POSTabWidget(
                    tabName: 'Beverages',
                    width: isPortrait ? 93.w : 72.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  POSTabWidget(
                    tabName: 'Juices',
                    width: isPortrait ? 69.w : 55.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                ],
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
                          children: [
                            const Spacer(),
                            Expanded(
                              flex: 2,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isEmpty = false;
                                  });
                                },
                                child: const IndigoButton(
                                  border: false,
                                  text: 'Add New Item',
                                  color: true,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: isPortrait ? 48.h : 96.h,
                          color: kCoolGray3,
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
                                  hintStyle:
                                      coolGrayR14.copyWith(color: kCoolGray),
                                  prefixIcon: Icon(
                                    !isFocused ? Icons.search : Icons.close,
                                    color: kCoolGray,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        SingleChildScrollView(
                          child: Container(
                            height: isPortrait ? 510.h : 300.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: GridView.builder(
                              // physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 12,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio:
                                    isPortrait ? 108.w / 152.h : 108.w / 232.h,
                                mainAxisSpacing: 9,
                                crossAxisSpacing: 8,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                if (index < 10) {
                                  return GestureDetector(
                                      onTap: () {
                                        mealController.addToList('chips');
                                      },
                                      child: const MealContainer());
                                } else {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: DottedBorder(
                                      color: kIndigo50,
                                      strokeWidth: 1,
                                      dashPattern: const [10, 6],
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            top: 26.h, bottom: 13.h),
                                        decoration: const BoxDecoration(
                                          color: kWhiteColor,
                                          // borderRadius: BorderRadius.circular(8.0),
                                          // border: Border.all(color: kIndigo50)
                                        ),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: SvgPicture.asset(
                                                  'assets/icons/add.svg'),
                                            ),
                                            SizedBox(
                                              height: 52.h,
                                            ),
                                            Center(
                                              child: Text(
                                                'Add Item',
                                                style: coolGraySB12.copyWith(
                                                    color: kCoolGray2),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 30.w),
          height: isPortrait ? 48.h : 86.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.routeCart);
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
      ),
    );
  }
}
