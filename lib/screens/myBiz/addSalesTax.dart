import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/components/textFieldWithLabel.dart';

import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class AddSalesTax extends StatefulWidget {
  const AddSalesTax({super.key});

  @override
  State<AddSalesTax> createState() => _AddSalesTaxState();
}

class _AddSalesTaxState extends State<AddSalesTax> {
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
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Enable Sales Tax',
                  style: coolGraySB14.copyWith(color: kCoolGray2),
                ),
                Switch(
                  value: true,
                  activeColor: kIndigo50,
                  activeTrackColor: kIndigo502,
                  inactiveThumbColor: kCoolGray,
                  inactiveTrackColor: kCoolGray6,
                  onChanged: (val) {
                    // setState(() {
                    //   status1 = val;
                    // });
                  },
                ),
              ],
            ),
          ),
          const SeperatorWidget(),
          SizedBox(
            height: 16.h,
          ),
          TextFieldWithLabel(
              hintText: 'Eg. Food Tax',
              label: 'Tax Description',
              fieldHeight: isPortrait ? 42.h : 84.h),
          SizedBox(
            height: 24.h,
          ),
          TextFieldWithLabel(
              hintText: 'Eg.30%',
              label: 'Sales Tax',
              fieldHeight: isPortrait ? 42.h : 84.h),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Apply sales tax for',
              style: coolGrayR12.copyWith(color: kCoolGray),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.w),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.white;
                                      }
                                      return kCoolGray6; // Use the default fill color.
                                    },
                                  ),
                                ),
                              ),
                              child: Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(color: kCoolGray6),
                                ),
                                activeColor: kIndigo50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Cash',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.white;
                                      }
                                      return kCoolGray6; // Use the default fill color.
                                    },
                                  ),
                                ),
                              ),
                              child: Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(color: kCoolGray6),
                                ),
                                activeColor: kIndigo50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'QR Code',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.white;
                                      }
                                      return kCoolGray6; // Use the default fill color.
                                    },
                                  ),
                                ),
                              ),
                              child: Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(color: kCoolGray6),
                                ),
                                activeColor: kIndigo50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Debit',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.white;
                                      }
                                      return kCoolGray6; // Use the default fill color.
                                    },
                                  ),
                                ),
                              ),
                              child: Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(color: kCoolGray6),
                                ),
                                activeColor: kIndigo50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            'Others',
                            style: coolGrayR14.copyWith(color: kCoolGray2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: kWhiteColor,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/iButton.svg',
                  color: kIndigo50,
                  height: 18.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Tax will be added in subtotal.',
                  style: coolGrayR14.copyWith(color: kCoolGray2),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            const IndigoButton(border: false, text: 'Save', color: false),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
