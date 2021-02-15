import 'package:flutter/painting.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
      fontStyle: FontStyle.normal,
      color: textColorPrimary,
    ),

//Light
    textLight = _text.copyWith(fontWeight: FontWeight.w300),

//Regular (w400)
    textRegular = _text.copyWith(fontWeight: FontWeight.normal),
    textRegular14 = textRegular.copyWith(fontSize: 14.0, height: 18.0 / 14.0),
    textRegular14SlateGrey = textRegular14.copyWith(color: textColorSlateGrey),

//Medium
    textMedium = _text.copyWith(fontWeight: FontWeight.w500),
    textMedium16 = textMedium.copyWith(fontSize: 16.0, height: 20.0 / 16.0),
    textMedium18 = textMedium.copyWith(fontSize: 18.0, height: 24.0 / 18.0),
    textMedium18LuckyPoint = textMedium18.copyWith(color: textColorLuckyPoint),

//Bold (w700)
    textBold = _text.copyWith(fontWeight: FontWeight.bold),
    textBold14 = textBold.copyWith(fontSize: 14.0, height: 18.0 / 14.0),
    textBold14White = textBold14.copyWith(color: textColorWhite),
    textBold24 = textBold.copyWith(fontSize: 24.0, height: 28.8 / 24.0),
    textBold32 = textBold.copyWith(fontSize: 32.0);
