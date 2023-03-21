import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/config/routes.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  bool isFocused = false;
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Transaction',
          style: inter20semiBold,
        ),
        centerTitle: true,
        backgroundColor: kIndigo50,
        elevation: 0,
      ),
      body: isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 88.r,
                    backgroundColor: kIndigo502,
                    child: SvgPicture.asset(
                      'assets/icons/transaction.svg',
                      color: kIndigo50,
                      height: 46.h,
                      width: 42.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'You have no transaction yet.\nLet’s create your first transaction in POS.',
                  textAlign: TextAlign.center,
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
                        text: 'Go To POS',
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
            )
          : SingleChildScrollView(
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
                            hintText: "Search by item, ID or Price",
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
                  Container(
                    height: isPortrait ? 48.h : 96.h,
                    color: kCoolGray8,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mon, 12 Apr 2020',
                          style: coolGraySB12.copyWith(color: kCoolGray),
                        ),
                        Text(
                          '\$123.45',
                          style: coolGraySB12.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeDetailTransation);
                    },
                    child: const TransactionHomeWidget(
                      isVoid: false,
                    ),
                  ),
                  const TransactionHomeWidget(
                    isVoid: true,
                  ),
                  Container(
                    height: isPortrait ? 48.h : 96.h,
                    color: kCoolGray8,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mon, 12 Apr 2020',
                          style: coolGraySB12.copyWith(color: kCoolGray),
                        ),
                        Text(
                          '\$123.45',
                          style: coolGraySB12.copyWith(color: kCoolGray2),
                        ),
                      ],
                    ),
                  ),
                  const TransactionHomeWidget(
                    isVoid: true,
                  ),
                ],
              ),
            ),
    );
  }
}

class TransactionHomeWidget extends StatelessWidget {
  final bool isVoid;
  const TransactionHomeWidget({
    super.key,
    required this.isVoid,
  });

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: kCoolGray3),
      )),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                '\$11.21',
                style: coolGraySB14.copyWith(color: kCoolGray2),
              )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '21:34',
                      style: coolGrayR12.copyWith(color: kCoolGray),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    const CircleAvatar(
                      radius: 2,
                      backgroundColor: kCoolGray,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Cash',
                      style: coolGrayR12.copyWith(color: kCoolGray),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: isPortrait ? 8.h : 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '#1230120',
                style: coolGrayR12.copyWith(color: kCoolGray),
              ),
              Container(
                height: isPortrait ? 24.h : 48.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: isVoid ? kRed50 : kGreen50,
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(color: isVoid ? kRed500 : kGreen400),
                ),
                child: Center(
                  child: Text(
                    isVoid ? 'Void' : 'Paid',
                    style: coolGraySB12.copyWith(
                        color: isVoid ? kRed500 : kGreen400),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
