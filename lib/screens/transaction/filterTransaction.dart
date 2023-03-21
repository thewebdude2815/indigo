import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class FilterTransaction extends StatefulWidget {
  const FilterTransaction({super.key});

  @override
  State<FilterTransaction> createState() => _FilterTransactionState();
}

class _FilterTransactionState extends State<FilterTransaction> {
  String _selectedValue = '';

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          title: Text(
            'Filter Transaction',
            style: inter20semiBold,
          ),
          centerTitle: true,
          backgroundColor: kIndigo50,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                child: Text(
                  'PAYMENT TYPE',
                  style: coolGraySB12.copyWith(color: kCoolGray),
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
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
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
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
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
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
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
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
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
              const SeperatorWidget(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                child: Text(
                  'DATE RANGE',
                  style: coolGraySB12.copyWith(color: kCoolGray),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  RadioListTile<String>(
                    title: Text(
                      'Today (12 May 2020)',
                      style: coolGrayR14.copyWith(color: kCoolGray2),
                    ),
                    value: 'Today (12 May 2020)',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'Yesterday (11 May 2020)',
                      style: coolGrayR14.copyWith(color: kCoolGray2),
                    ),
                    value: 'Yesterday (11 May 2020)',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'This Week (7 May - 13 May 2020)',
                      style: coolGrayR14.copyWith(color: kCoolGray2),
                    ),
                    value: 'This Week (7 May - 13 May 2020)',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'This Month (1 May - 31 May 2020)',
                      style: coolGrayR14.copyWith(color: kCoolGray2),
                    ),
                    value: 'This Month (1 May - 31 May 2020)',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text(
                      'Custom',
                      style: coolGrayR14.copyWith(color: kCoolGray2),
                    ),
                    value: 'Custom',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  _selectedValue == 'Custom'
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      border: Border.all(color: kCoolGray6)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 13.h),
                                  child: Center(
                                    child: Text(
                                      '1 May 2020',
                                      style: coolGrayR12.copyWith(
                                          color: kCoolGray2),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Container(
                                height: 2.h,
                                width: 20.w,
                                decoration:
                                    const BoxDecoration(color: kCoolGray),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      border: Border.all(color: kCoolGray6)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 13.h),
                                  child: Center(
                                    child: Text(
                                      '1 May 2020',
                                      style: coolGrayR12.copyWith(
                                          color: kCoolGray2),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: kWhiteColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Reset Filter',
                    style: coolGrayR14.copyWith(color: kIndigo50),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const IndigoButton(
                    border: false, text: 'Set Filter', color: true),
              ),
              SizedBox(
                height: 8.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
