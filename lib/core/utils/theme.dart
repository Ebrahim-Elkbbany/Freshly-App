import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/styles.dart';


ThemeData lightTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 22.w),
    unselectedIconTheme: IconThemeData(size: 22.w),
    selectedLabelStyle: Styles.textStyle12.copyWith(color: kPrimaryColor,fontWeight: FontWeight.w600),
    unselectedLabelStyle: Styles.textStyle12.copyWith(
     color:  kSeconderColor,
        fontWeight: FontWeight.w600,
    ),
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: kPrimaryColor,
    elevation: 0,
    unselectedItemColor: kSeconderColor,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: Styles.textStyle20.copyWith(
      color: kPrimaryColor,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: kPrimaryColor, size: 24.w),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight:
        50.h,
  ),
  iconTheme: IconThemeData(size: 24.w),
  fontFamily: "Montserrat"
);
