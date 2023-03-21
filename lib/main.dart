import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indigo/config/routes.dart';

void main() {
  runApp(const IndigoPOS());
}

class IndigoPOS extends StatelessWidget {
  const IndigoPOS({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.splashRoute,
            getPages: Routes.getPages,
          );
        });
  }
}
