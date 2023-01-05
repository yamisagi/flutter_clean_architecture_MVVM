import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/color_manager.dart';
import 'package:flutter_clean_architecture/presentation/font_manager.dart';
import 'package:flutter_clean_architecture/presentation/styles_manager.dart';
import 'package:flutter_clean_architecture/presentation/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // Main colors

    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primaryColorOpacity,
    primaryColorDark: ColorManager.darkGrey,
    disabledColor: ColorManager.grey1,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    splashColor: ColorManager.primaryColorOpacity,
    // Card View Theme

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s12),
      ),
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryColorOpacity,
      titleTextStyle: getRegularText(
        color: ColorManager.white,
        fontSize: AppSize.s16,
      ),
      iconTheme: const IconThemeData(color: ColorManager.white),
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.primaryColorOpacity,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularText(color: ColorManager.white),
        backgroundColor: ColorManager.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s12),
          ),
        ),
      ),
    ),

    // Text Theme
    textTheme: TextTheme(
      headline1: getSemiBoldText(
        color: ColorManager.darkGrey,
        fontSize: FontSizes.medium,
      ),
      subtitle1: getMediumText(
        color: ColorManager.lightGrey,
        fontSize: FontSizes.small,
      ),
      caption: getRegularText(
        color: ColorManager.grey1,
        fontSize: FontSizes.xSmall,
      ),
      bodyText1: getRegularText(
        color: ColorManager.grey,
        fontSize: FontSizes.xSmall,
      ),
    ),
    // Input Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularText(color: ColorManager.grey1),
      labelStyle: getMediumText(color: ColorManager.darkGrey),
      errorStyle: getRegularText(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.s1,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
          color: ColorManager.error,
          width: AppSize.s1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s8),
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.s1,
        ),
      ),

    ),
  );
}
