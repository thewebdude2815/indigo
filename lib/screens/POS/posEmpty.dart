import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class POSEmpty extends StatelessWidget {
  const POSEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70.h,
              color: kIndigo50,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/logoHok.png'),
                  ),
                  const Spacer(),
                  Text(
                    'Indigo POS',
                    style: inter20semiBold,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeCart);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/board.svg',
                      height: 26.h,
                      width: 22.w,
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
