// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/screens/POS/pos.dart';
import 'package:indigo/screens/items/items.dart';
import 'package:indigo/screens/myBiz/myBiz.dart';
import 'package:indigo/screens/transaction/transaction.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int myIndex = 0;
  List<Widget> screens = [
    const POS(),
    const Items(),
    const Transaction(),
    const MyBiz(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              myIndex = value;
              print(myIndex);
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: myIndex,
          backgroundColor: kWhiteColor,
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kIndigo50,
          unselectedItemColor: kCoolGray,
          items: [
            BottomNavigationBarItem(
              label: 'POS',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(
                  'assets/icons/calculator.svg',
                  color: myIndex == 0 ? kIndigo50 : kCoolGray,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Items',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset('assets/icons/tag.svg',
                    color: myIndex == 1 ? kIndigo50 : kCoolGray),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Transaction',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset('assets/icons/transaction.svg',
                    color: myIndex == 2 ? kIndigo50 : kCoolGray),
              ),
            ),
            BottomNavigationBarItem(
              label: 'My Biz',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset('assets/icons/biz.svg',
                    color: myIndex == 3 ? kIndigo50 : kCoolGray),
              ),
            ),
          ]),
    );
  }
}
