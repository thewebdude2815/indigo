import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class ReceiptPaid extends StatelessWidget {
  const ReceiptPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/logoHok.png'),
                        ),
                        Text(
                          '#Receipt 1-01',
                          style: inter20semiBold.copyWith(color: kCoolGray2),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Hokben Kaliurang',
                      style: coolGraySB16,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Jl Kaliurang Km 5 Sleman',
                      style: coolGrayR12.copyWith(color: kCoolGray),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '5 Items (Qty : 8)',
                          style: coolGrayR12.copyWith(color: kCoolGray2),
                        ),
                        Text('#123233528',
                            style: coolGrayR12.copyWith(color: kCoolGray2)),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cash',
                              style: coolGrayR12.copyWith(color: kCoolGray2),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            const CircleAvatar(
                              radius: 2,
                              backgroundColor: kCoolGray2,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('Dine In',
                                style: coolGrayR12.copyWith(color: kCoolGray2)),
                          ],
                        ),
                        Text('By John Keaton',
                            style: coolGrayR12.copyWith(color: kCoolGray2)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Divider(
                color: kCoolGray2,
              ),
              const ReceiptWidget(),
              const ReceiptWidget(),
              const ReceiptWidget(),
              const ReceiptWidget(),
              const ReceiptTotals(),
              const Divider(
                color: kCoolGray2,
              ),
              const ReceiptFooter()
            ],
          ),
        ),
      ),
    );
  }
}

class ReceiptTotals extends StatelessWidget {
  const ReceiptTotals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: coolGrayR14.copyWith(color: kCoolGray2),
              ),
              Text('\$15', style: coolGrayR14.copyWith(color: kCoolGray2)),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax (10%)',
                style: coolGrayR14.copyWith(color: kCoolGray2),
              ),
              Text('\$1.5', style: coolGrayR14.copyWith(color: kCoolGray2)),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: coolGraySB16.copyWith(
                    color: kCoolGray2, fontWeight: FontWeight.w700),
              ),
              Text('\$56',
                  style: coolGraySB16.copyWith(
                      color: kCoolGray2, fontWeight: FontWeight.w700)),
            ],
          ),
          const Divider(
            color: kCoolGray3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Received',
                style: coolGrayR14.copyWith(color: kCoolGray2),
              ),
              Text('\$100', style: coolGrayR14.copyWith(color: kCoolGray2)),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Change',
                style: coolGrayR14.copyWith(color: kCoolGray2),
              ),
              Text('\$44', style: coolGrayR14.copyWith(color: kCoolGray2)),
            ],
          ),
        ],
      ),
    );
  }
}

class ReceiptFooter extends StatelessWidget {
  const ReceiptFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        Center(
          child: Text(
            'Thank you, enjoy your meal',
            style: coolGrayR12.copyWith(color: kCoolGray2),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Center(
          child: Text(
            'Follow us on IG : @hokben',
            style: coolGrayR12.copyWith(color: kCoolGray2),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Center(
          child: Text(
            '24 Aug 2020 19:34',
            style: coolGrayR12.copyWith(color: kCoolGray2),
          ),
        ),
        SizedBox(
          height: 27.h,
        ),
      ],
    );
  }
}

class ReceiptWidget extends StatelessWidget {
  const ReceiptWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: kCoolGray3),
      )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Green Tea',
                style: coolGrayR14.copyWith(color: kCoolGray2),
              ),
              Text('\$5', style: coolGrayR14.copyWith(color: kCoolGray2)),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: '1',
                    style: coolGrayR12.copyWith(color: kCoolGray),
                    children: [
                      TextSpan(
                        text: ' X',
                        style: coolGrayR12.copyWith(color: kCoolGray),
                      )
                    ]),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                '\$10.78',
                style: coolGrayR12.copyWith(color: kCoolGray7),
              )
            ],
          )
        ],
      ),
    );
  }
}
