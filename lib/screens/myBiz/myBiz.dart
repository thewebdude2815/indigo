import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/bizInfoWidget.dart';
import 'package:indigo/components/myBizHomeWidget.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class MyBiz extends StatelessWidget {
  const MyBiz({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'My Business',
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
              height: isPortrait ? 181.h : 242.h,
              color: kCoolGray3,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24.r,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            const AssetImage('assets/images/logoHok.png'),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hokben Kaliurang',
                            style: coolGraySB16.copyWith(color: kCoolGray2),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Randy Varianda',
                            style: coolGrayR12.copyWith(color: kCoolGray5),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: false,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Expanded(
                        child: BizInfoWidgets(
                          showShadow: false,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routeSalesReport);
              },
              child: const MyBizHomeWidget(
                icon: 'assets/icons/sales.svg',
                name: 'Sales Report',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routeSalesTax);
              },
              child: const MyBizHomeWidget(
                icon: 'assets/icons/dollar.svg',
                name: 'Tax Setting',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routeBusinessInfo);
              },
              child: const MyBizHomeWidget(
                icon: 'assets/icons/building.svg',
                name: 'Business Information',
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.routeAccountsInfo);
              },
              child: const MyBizHomeWidget(
                icon: 'assets/icons/user.svg',
                name: 'User Information',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: kCoolGray3),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/logout.svg',
                    color: logoutRed,
                    height: isPortrait ? 16.h : 32.h,
                    width: isPortrait ? 16.w : 32.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Log Out',
                    style: coolGraySB14.copyWith(color: logoutRed),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
