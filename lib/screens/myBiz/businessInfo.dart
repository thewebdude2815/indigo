import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/textFieldWithLabel.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class BusinessInfo extends StatelessWidget {
  const BusinessInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Accounts Information',
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
              height: isPortrait ? 140.h : 280.h,
              color: kCoolGray3,
              child: Row(
                children: [
                  SizedBox(
                    width: 142.w,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: isPortrait ? 40 : 60,
                        backgroundImage:
                            const AssetImage('assets/images/logoHok.png'),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset('assets/icons/edit.svg'),
                    ],
                  ),
                  SizedBox(
                    width: 103.98.w,
                  ),
                  // const Spacer()
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWithLabel(
                  label: 'Business Name',
                  hintText: 'Eg. your text here',
                  fieldHeight: isPortrait ? 62.h : 102.h,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Phone',
                        style: coolGrayR12.copyWith(color: kCoolGray2),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        height: isPortrait ? 62.h : 102.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                margin: EdgeInsets.only(right: 8.w),
                                width: 50.w,
                                decoration: BoxDecoration(
                                  color: kCoolGray3,
                                  border: Border.all(color: kCoolGray6),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.r),
                                    bottomLeft: Radius.circular(8.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "+62",
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.only(top: 6.h, left: 16.h),
                              filled: true,
                              fillColor: kWhiteColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(color: kCoolGray6),
                              ),
                              hintText: 'Enter Your Phone',
                              hintStyle: coolGrayR14),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: coolGrayR12.copyWith(color: kCoolGray2),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        height: isPortrait ? 62.h : 102.h,
                        child: DropdownButtonFormField<String>(
                          iconDisabledColor: kCoolGray,
                          iconEnabledColor: kCoolGray,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColor,
                            hintText: 'Select Your City',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: kCoolGray6,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: 'option1',
                              child: Text('Option 1'),
                            ),
                            DropdownMenuItem(
                              value: 'option2',
                              child: Text('Option 2'),
                            ),
                            DropdownMenuItem(
                              value: 'option3',
                              child: Text('Option 3'),
                            ),
                          ],
                          onChanged: (String? value) {
                            // Do something when the dropdown value changes
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: coolGrayR12.copyWith(color: kCoolGray2),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        // height: 62.h,
                        child: TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              // contentPadding: EdgeInsets.only(top: 12.h, left: 16.h),
                              filled: true,
                              fillColor: kWhiteColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: const BorderSide(color: kCoolGray6),
                              ),
                              hintText: 'Enter Your Address',
                              hintStyle: coolGrayR14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: const IndigoButton(border: false, text: 'Save', color: true),
      ),
    );
  }
}
