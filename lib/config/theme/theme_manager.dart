import 'package:electrocar_app/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    primaryColor: ColorsManager.blue,
    appBarTheme: AppBarTheme(
      color: ColorsManager.white,
      foregroundColor: ColorsManager.black10,
      titleTextStyle: GoogleFonts.roboto(
        fontSize: 22.sp,
        fontWeight: FontWeight.normal,
        color: ColorsManager.black,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorsManager.black),
    ),
    scaffoldBackgroundColor: ColorsManager.light,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
      prefixIconColor: ColorsManager.grey,
      labelStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.grey,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(
          width: 1,
          color: ColorsManager.grey,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(
          width: 1,
          color: ColorsManager.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(
          width: 1,
          color: ColorsManager.grey,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(
          width: 1,
          color: ColorsManager.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(
          width: 1,
          color: ColorsManager.red,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: ColorsManager.grey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      foregroundColor: ColorsManager.blue,
      textStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: ColorsManager.blue,
        textStyle: TextStyle(decoration: TextDecoration.underline),
      ),
    )),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.black1C,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.blue,
      ),
    ),
  );

  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorsManager.dark,
  );
}
