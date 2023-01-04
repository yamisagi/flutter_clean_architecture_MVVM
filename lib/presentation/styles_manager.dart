import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/font_manager.dart';

TextStyle _getTextStyle(
  Color color,
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
  );
}

// Regular
TextStyle getRegularText({
  required Color color,
  double fontSize = FontSizes.xSmall,
}) =>
    _getTextStyle(
      color,
      fontSize,
      FontConstants.fontFamily,
      FontWeights.regular,
    );

// Light

TextStyle getLightText({
  required Color color,
  double fontSize = FontSizes.xSmall,
}) =>
    _getTextStyle(
      color,
      fontSize,
      FontConstants.fontFamily,
      FontWeights.light,
    );

// Bold

TextStyle getBoldText({
  required Color color,
  double fontSize = FontSizes.xSmall,
}) =>
    _getTextStyle(
      color,
      fontSize,
      FontConstants.fontFamily,
      FontWeights.bold,
    );

// SemiBold

TextStyle getSemiBoldText({
  required Color color,
  double fontSize = FontSizes.xSmall,
}) =>
    _getTextStyle(
      color,
      fontSize,
      FontConstants.fontFamily,
      FontWeights.semiBold,
    );

// Medium


TextStyle getMediumText({
  required Color color,
  double fontSize = FontSizes.xSmall,
}) =>
    _getTextStyle(
      color,
      fontSize,
      FontConstants.fontFamily,
      FontWeights.medium,
    );