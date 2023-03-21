import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/config/routes.dart';

import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

import '../../components/salesTextWidget.dart';

class SalesTax extends StatefulWidget {
  const SalesTax({super.key});

  @override
  State<SalesTax> createState() => _SalesTaxState();
}

class _SalesTaxState extends State<SalesTax> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Sales Tax',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: Column(
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
                          hintStyle: coolGrayR14.copyWith(color: kCoolGray),
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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.routeAddSalesTax);
                  },
                  child: Container(
                    height: isPortrait ? 24.h : 48.h,
                    width: 24.w,
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: kIndigo50,
                      borderRadius: BorderRadius.circular(4.r),
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
          const SalesTextWidget(
            title: 'Online Food Tax',
            subtitle: 'Tax added 20%',
          ),
          const SalesTextWidget(
            title: 'Dine In Tax',
            subtitle: 'Tax added 10%',
          ),
        ],
      ),
    );
  }
}
