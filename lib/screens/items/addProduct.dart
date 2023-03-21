import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indigo/components/addProductMenuSwitch.dart';
import 'package:indigo/components/indigoButton.dart';
import 'package:indigo/components/seperatorWidget.dart';
import 'package:indigo/components/textFieldWithLabel.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool isImageSelected = false;
  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Add Product',
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
              height: isPortrait ? 184.h : 284.h,
              color: kCoolGray3,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 122.w,
                    ),
                    Row(
                      children: [
                        Container(
                          height: isPortrait ? 151.h : 251.h,
                          width: 108.w,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.r),
                                      topRight: Radius.circular(8.r)),
                                  child: isImageSelected
                                      ? Image.asset(
                                          'assets/images/roast.png',
                                          height: 108.h,
                                          width: 108.h,
                                          fit: BoxFit.cover,
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            Get.bottomSheet(
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.w),
                                                  height: isPortrait
                                                      ? 200.h
                                                      : 350.h,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 16.h,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Add Photo',
                                                            style: coolGraySB16
                                                                .copyWith(
                                                                    color:
                                                                        kCoolGray2),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              Get.back();
                                                            },
                                                            child: const Icon(
                                                              Icons.close,
                                                              color: kCoolGray,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 24.h,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            isImageSelected =
                                                                true;
                                                          });
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: isPortrait
                                                                  ? 40.h
                                                                  : 70.h,
                                                              width: 40.w,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(4
                                                                              .w),
                                                                  color:
                                                                      kCoolGray3),
                                                              child: Center(
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/icons/image.svg',
                                                                  height:
                                                                      isPortrait
                                                                          ? 16.h
                                                                          : 32.h,
                                                                  width:
                                                                      isPortrait
                                                                          ? 16.w
                                                                          : 32.w,
                                                                  color:
                                                                      kCoolGray,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 8.w,
                                                            ),
                                                            Text(
                                                              'Pick From Gallery',
                                                              style: coolGraySB14
                                                                  .copyWith(
                                                                      color:
                                                                          kCoolGray2),
                                                            ),
                                                            const Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_ios_sharp,
                                                              color: kCoolGray,
                                                              size: isPortrait
                                                                  ? 14.h
                                                                  : 28.h,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 16.w,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: isPortrait
                                                                ? 40.h
                                                                : 70.h,
                                                            width: 40.w,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(4
                                                                            .w),
                                                                color:
                                                                    kCoolGray3),
                                                            child: Center(
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/image.svg',
                                                                height:
                                                                    isPortrait
                                                                        ? 16.h
                                                                        : 32.h,
                                                                width:
                                                                    isPortrait
                                                                        ? 16.w
                                                                        : 32.w,
                                                                color:
                                                                    kCoolGray,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Text(
                                                            'Pick From Camera',
                                                            style: coolGraySB14
                                                                .copyWith(
                                                                    color:
                                                                        kCoolGray2),
                                                          ),
                                                          const Spacer(),
                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios_sharp,
                                                            color: kCoolGray,
                                                            size: isPortrait
                                                                ? 14.h
                                                                : 28.h,
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8.w,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // preferredSize: Size.fromHeight(300),
                                                isScrollControlled: true,
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                ));
                                          },
                                          child: Container(
                                            color: kIndigo100,
                                            child: Center(
                                              child: SvgPicture.asset(
                                                  'assets/icons/image.svg'),
                                            ),
                                          ),
                                        ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 4.h,
                              // ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(
                                    'Item Name',
                                    style: coolGraySB14.copyWith(
                                        color: kCoolGray2),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 4.h,
                              // ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(
                                    '\$0',
                                    style:
                                        coolGrayR14.copyWith(color: kCoolGray2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        isImageSelected
                            ? SvgPicture.asset('assets/icons/edit.svg')
                            : const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      width: 97.98.w,
                    ),
                    // const Spacer()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFieldWithLabel(
              hintText: 'Eg. Beef Steak',
              label: 'Item Name',
              fieldHeight: isPortrait ? 42.h : 84.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFieldWithLabel(
              hintText: 'Eg. Beef Steak',
              label: 'Price',
              fieldHeight: isPortrait ? 42.h : 84.h,
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
                    'Price',
                    style: coolGrayR12.copyWith(color: kCoolGray2),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: isPortrait ? 42.h : 84.h,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kCoolGray6),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'option1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'option2',
                            child: Text('Option 2'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'option3',
                            child: Text('Option 3'),
                          ),
                        ],
                        onChanged: (String? value) {},
                        hint: Text(
                          'Pick a category',
                          style: coolGrayR14.copyWith(color: kCoolGray2),
                        ),
                        dropdownColor: Colors.white,
                        isExpanded: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const SeperatorWidget(),
            Column(
              children: const [
                AddProductMenuSwitch(),
                AddProductMenuSwitch(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: isPortrait ? 54.h : 104.h,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: IndigoButton(
            border: false,
            text: 'Save',
            color: isImageSelected ? true : false,
          )),
    );
  }
}
