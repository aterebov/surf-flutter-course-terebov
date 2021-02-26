import 'package:flutter/material.dart';

// Основная палитра (http://www.color-blindness.com/color-name-hue/)
const Color _slateGrey = Color(0xFF7C7E92),
    _blueZodiac = Color(0xFF3B3E5B),
    _white = Colors.white,
    _whiteSmoke = Color(0xFFF5F5F5),
    _luckyPoint = Color(0xFF252849),
    _blackRussian = Color(0xFF21222C),
    _blackDark = Color(0xFF1A1A20);

// Семантические алиасы
// Пополняются по мере необходимости
// Используют только основную палитру

// Универсальные
const Color textColorBlueZodiac = _blueZodiac,
    textColorSlateGrey = _slateGrey,
    textColorWhite = _white,
    textColorLuckyPoint = _luckyPoint;

// Светлая схема
const Color lightBackgroundColor = _white,
    lightTabbarColorBackground = _whiteSmoke,
    lightTabbarColorIndicator = _blueZodiac,
    lightSightDetailDividerColor = _slateGrey,
    lightSightDetailButtonColor = _blueZodiac,
    lightSightCardBackgroundColor = _whiteSmoke;

// Темная схема
const Color darkBackgroundColor = _blackRussian,
    darkTabbarColorBackground = _blackDark,
    darkTabbarColorIndicator = _white,
    darkSightDetailDividerColor = _slateGrey,
    darkSightDetailButtonColor = _white,
    darkSightCardBackgroundColor = _blackDark;
