import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indigo/constants/colors.dart';
import 'package:indigo/constants/texts.dart';

class IndigoButton extends StatelessWidget {
  final String text;
  final bool border;
  final bool color;
  const IndigoButton(
      {super.key,
      required this.border,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      height: isPortrait ? 48.h : 96.h,
      decoration: BoxDecoration(
          color: border && !color
              ? kWhiteColor
              : !border && color
                  ? kIndigo50
                  : border && color
                      ? kWhiteColor
                      : kIndigo50,
          boxShadow: const [
            BoxShadow(
                color: kWhiteColorGray,
                blurRadius: 2.0,
                offset: Offset(0.0, 0.75))
          ],
          borderRadius: BorderRadius.circular(8.r),
          border: border
              ? Border.all(color: color ? kIndigo200 : kIndigo50)
              : null),
      child: Center(
        child: Text(
          text,
          style: border && !color
              ? inter14semiBold
              : !border && color
                  ? inter14semiBold.copyWith(color: kWhiteColor)
                  : border && color
                      ? inter14semiBold.copyWith(color: kIndigo200)
                      : inter14semiBold.copyWith(color: kWhiteColor),
        ),
      ),
    );
  }
}
