import 'package:flutter/material.dart';

// Основная палитра (http://www.color-blindness.com/color-name-hue/)
const Color _slateGrey = Color(0xFF7C7E92),
    _blueZodiac = Color(0xFF3B3E5B),
    _white = Colors.white,
    _whiteSmoke = Color(0xFFF5F5F5),
    _luckyPoint = Color(0xFF252849),
    _blackRussian = Color(0xFF21222C),
    _blackDark = Color(0xFF1A1A20),
    _fruitSalad = Color(0xFF4CAF50),
    _pastelGreen = Color(0xFF6ADA6F);
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
    lightSightDetailElevatedButtonColor = _fruitSalad,
    lightSightDetailTextButtonColor = _blueZodiac,
    lightSightDetailTextButtonDisableColor = _slateGrey,
    lightSightDetailArrowButtonColor = _blackRussian,
    lightSightCardBackgroundColor = _whiteSmoke,
    lightSightCardButtonColor = _white,
    lightFiltersButtonColor = _luckyPoint,
    lightFiltersTypeSwithOffColor = _fruitSalad,
    lightFiltersTypeSwithOnColor = _pastelGreen,
    lightFiltersSliderActiveTrackColor = _fruitSalad,
    lightFiltersSliderInactiveTrackColor = _slateGrey,
    lightFiltersSliderThumbColor = _white,
    lightFiltersElevatedButtonColor = _fruitSalad,
    lightFiltersTextButtonColor = _fruitSalad;

// Темная схема
const Color darkBackgroundColor = _blackRussian,
    darkTabbarColorBackground = _blackDark,
    darkTabbarColorIndicator = _white,
    darkSightDetailDividerColor = _slateGrey,
    darkSightDetailButtonColor = _white,
    darkSightDetailElevatedButtonColor = _fruitSalad,
    darkSightDetailTextButtonColor = _white,
    darkSightDetailTextButtonDisableColor = _slateGrey,
    darkSightDetailArrowButtonColor = _blackRussian,
    darkSightCardBackgroundColor = _blackDark,
    darkSightCardButtonColor = _white,
    darkFiltersButtonColor = _white,
    darkFiltersTypeSwithOffColor = _fruitSalad,
    darkFiltersTypeSwithOnColor = _pastelGreen,
    darkFiltersSliderActiveTrackColor = _fruitSalad,
    darkFiltersSliderInactiveTrackColor = _slateGrey,
    darkFiltersSliderThumbColor = _white,
    darkFiltersElevatedButtonColor = _fruitSalad,
    darkFiltersTextButtonColor = _fruitSalad;
