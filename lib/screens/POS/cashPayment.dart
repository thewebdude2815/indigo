import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class CashPayment extends StatefulWidget {
  const CashPayment({super.key});

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
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
          'Cash Payment',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  'CASH RECEIVED',
                  style: coolGraySB12.copyWith(color: kCoolGray),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Text(
                  _displayValue == '0' ? '' : '\$${_displayValue.substring(1)}',
                  style: inter32semiBold,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'Change: \$${int.parse(_displayValue) - int.parse(totalBill)}',
                  style: coolGrayR14.copyWith(
                      color: isPositive ? kIndigo50 : kRed700),
                ),
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
