import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
      fontStyle: FontStyle.normal,
      color: Color(0xFF3B3E5B),
    ),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.w700),
    textBold32 = textBold.copyWith(fontSize: 32.0);

const textSightCardName = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF3B3E5B),
  fontWeight: FontWeight.w500,
  fontSize: 16,
  height: 20.0 / 16.0,
);

const textSightCardType = TextStyle(
  fontStyle: FontStyle.normal,
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 14,
  height: 18.0 / 14.0,
);

const textSightCardDetail = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF7C7E92),
  fontWeight: FontWeight.w400,
  fontSize: 14,
  height: 18.0 / 14.0,
);

const textSightDetailName = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF3B3E5B),
  fontWeight: FontWeight.w700,
  fontSize: 24,
  height: 28.8 / 24.0,
);

const textSightDetailType = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF3B3E5B),
  fontWeight: FontWeight.w700,
  fontSize: 14,
  height: 18.0 / 14.0,
);

const textSightDetailWorktime = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF7C7E92),
  fontWeight: FontWeight.w400,
  fontSize: 14,
  height: 18.0 / 14.0,
);

const textSightDetailDetail = TextStyle(
  fontStyle: FontStyle.normal,
  color: Color(0xFF3B3E5B),
  fontWeight: FontWeight.w400,
  fontSize: 14,
  height: 18.0 / 14.0,
);
