import 'package:flutter/painting.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
      fontStyle: FontStyle.normal,
      color: Color(0xFF3B3E5B),
    ),

//Bold
    textBold = _text.copyWith(fontWeight: FontWeight.w700),
    textBold32 = textBold.copyWith(fontSize: 32.0);
