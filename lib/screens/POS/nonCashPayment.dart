import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class NonCashPayment extends StatefulWidget {
  const NonCashPayment({super.key});

  @override
  State<NonCashPayment> createState() => _NonCashPaymentState();
}

class _NonCashPaymentState extends State<NonCashPayment> {
  String _displayValue = '0';
  String totalBill = '56';
  bool isPositive = false;
  void _addToDisplay(String value) {
    setState(() {
      _displayValue += value;
    });
  }

  void _clearDisplay() {
    setState(() {
      _displayValue = '';
    });
  }

  checkChange() {
    if (int.parse(_displayValue) - int.parse(totalBill) > 0) {
      setState(() {
        isPositive = true;
      });
    } else {
      setState(() {
        isPositive = false;
      });
    }
  }

  TextEditingController cashController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
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
              color: kCoolGray3,
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Center(
                    child: Text(
                      'TOTAL BILL',
                      style: coolGraySB12.copyWith(color: kCoolGray),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: Text(
                      '\$${totalBill}',
                      style: inter32semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: Text(
                'NONMINAL RECEIVED',
                style: coolGraySB12.copyWith(color: kCoolGray),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Center(
              child: Text(
                '\$${_displayValue}',
                style: inter32semiBold,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          height: isPortrait ? 349.h : 550.h,
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
                                    'Add Note',
                                    style: coolGraySB16.copyWith(
                                        color: kCoolGray2),
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
                                'Note',
                                style: coolGrayR12.copyWith(color: kCoolGray2),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextField(
                                maxLines: 6,
                                decoration: InputDecoration(
                                  hintText: 'Eg. CC No. 1213 XXXX XXXX XXXX',
                                  hintStyle:
                                      coolGrayR14.copyWith(color: kCoolGray),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        const BorderSide(color: kCoolGray6),
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
                          borderRadius: BorderRadius.circular(8.r),
                        ));
                  },
                  child: Text(
                    'Add Note +',
                    style: coolGrayR14.copyWith(color: kIndigo50),
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 80.h,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: kCoolGray3),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('1');
                        checkChange();
                      },
                      child: Center(
                        child: Text('1', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('2');
                        checkChange();
                      },
                      child: Center(
                        child: Text('2', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('3');
                        checkChange();
                      },
                      child: Center(
                        child: Text('3', style: inter32R),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.h,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: kCoolGray3),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('4');
                        checkChange();
                      },
                      child: Center(
                        child: Text('4', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('5');
                        checkChange();
                      },
                      child: Center(
                        child: Text('5', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('6');
                        checkChange();
                      },
                      child: Center(
                        child: Text('6', style: inter32R),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.h,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: kCoolGray3),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('7');
                        checkChange();
                      },
                      child: Center(
                        child: Text('7', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('8');
                        checkChange();
                      },
                      child: Center(
                        child: Text('8', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('9');
                        checkChange();
                      },
                      child: Center(
                        child: Text('9', style: inter32R),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.h,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: kCoolGray3),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('000');
                        checkChange();
                      },
                      child: Center(
                        child: Text('000', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _addToDisplay('0');
                        checkChange();
                      },
                      child: Center(
                        child: Text('0', style: inter32R),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _clearDisplay();
                        checkChange();
                      },
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/minus.svg',
                          color: kCoolGray2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: const IndigoButton(
          border: false,
          text: 'Charge',
          color: true,
        ),
      ),
    );
  }
}
