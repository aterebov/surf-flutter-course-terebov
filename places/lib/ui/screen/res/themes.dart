import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';

/// Методика использования тем в приложении.
///
/// Основная тема приложения устанавливается для виджета [MaterialApp].
/// Параметр [brightness] основной темы является ключевым и позволяет
/// в дальнейшем, используя [Theme.of(context)], определить установленную
/// сейчас тему (светлая или темная).
///
/// При необходимости, для отдельного виджета может быть установлена
/// специализированная тема (пример - виджеты SightCard, DetailCard).
/// Для этого виджет оборачивается в [Theme] где, в зависимости от значения
/// параметра [brightness] основной темы, устанавливается специализированная
/// тема - светлая или темная. Дополнительно используется [Builder] чтобы
/// обновить [(context)] для последующих виджетов.

/// Приложение - светлая тема
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightBackgroundColor,
  cardColor: lightTabbarColorBackground,
  primaryTextTheme:
      TextTheme(headline6: textMedium18LuckyPoint), // Заголовок в AppBar
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: lightTabbarColorIndicator,
    ),
    labelColor: textColorWhite,
    labelStyle: textBold14,
    unselectedLabelColor: textColorSlateGrey,
    unselectedLabelStyle: textBold14,
  ),
);

/// Приложение - темная тема
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: darkBackgroundColor,
  scaffoldBackgroundColor: darkBackgroundColor,
  cardColor: darkTabbarColorBackground,
  primaryTextTheme:
      TextTheme(headline6: textMedium18White), // Заголовок в AppBar
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: darkTabbarColorIndicator,
    ),
    labelColor: textColorBlueZodiac,
    labelStyle: textBold14,
    unselectedLabelColor: textColorSlateGrey,
    unselectedLabelStyle: textBold14,
  ),
);

/// Карточка места - светлая тема
final ThemeData lightSightCardTheme = ThemeData(
  backgroundColor: lightSightCardBackgroundColor,
  primaryTextTheme: TextTheme(
    subtitle2: textBold14White,
    bodyText1: textMedium16BlueZodiac,
    bodyText2: textRegular14SlateGrey,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: lightSightCardButtonColor,
      padding: EdgeInsets.all(0),
    ),
  ),
);

/// Карточка места - темная тема
final ThemeData darkSightCardTheme = ThemeData(
  backgroundColor: darkSightCardBackgroundColor,
  primaryTextTheme: TextTheme(
    subtitle2: textBold14White,
    bodyText1: textMedium16White,
    bodyText2: textRegular14SlateGrey,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: darkSightCardButtonColor,
      padding: EdgeInsets.all(0),
    ),
  ),
);

/// Детализация места - светлая тема
final ThemeData lightSightDetailTheme = ThemeData(
  backgroundColor: lightBackgroundColor,
  dividerColor: lightSightDetailDividerColor,
  buttonColor: lightSightDetailArrowButtonColor,
  primaryTextTheme: TextTheme(
    bodyText1: textBold24BlueZodiac,
    bodyText2: textRegular14BlueZodiac,
    subtitle1: textRegular14SlateGrey,
    subtitle2: textBold14BlueZodiac,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: lightSightDetailElevatedButtonColor,
      minimumSize: Size(double.infinity, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: textBold14,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: lightSightDetailTextButtonColor,
      onSurface: lightSightDetailTextButtonDisableColor,
      textStyle: textBold14,
    ),
  ),
);

/// Детализация места - темная тема
final ThemeData darkSightDetailTheme = ThemeData(
  backgroundColor: darkBackgroundColor,
  dividerColor: darkSightDetailDividerColor,
  buttonColor: darkSightDetailArrowButtonColor,
  primaryTextTheme: TextTheme(
    bodyText1: textBold24White,
    bodyText2: textRegular14White,
    subtitle1: textRegular14SlateGrey,
    subtitle2: textBold14SlateGrey,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: darkSightDetailElevatedButtonColor,
      minimumSize: Size(double.infinity, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: textBold14,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: darkSightDetailElevatedButtonColor,
      minimumSize: Size(double.infinity, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: textBold14,
    ),
  ),
);

/// Экран поиска - светлая тема
final ThemeData lightFiltersScreenTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightBackgroundColor,
  buttonColor: lightFiltersButtonColor,
  cardColor: lightFiltersTypeSwithOffColor,
  dividerColor: lightFiltersTypeSwithOnColor,
  primaryTextTheme: TextTheme(
    subtitle1: textRegular16LuckyPoint,
    subtitle2: textRegular12BlueZodiac,
  ),
  sliderTheme: SliderThemeData(
    trackHeight: 2,
    activeTrackColor: lightFiltersSliderActiveTrackColor,
    inactiveTrackColor: lightFiltersSliderInactiveTrackColor,
    thumbColor: lightFiltersSliderThumbColor,
    rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: 8,
      elevation: 4,
    ),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 8),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: lightFiltersElevatedButtonColor,
      minimumSize: Size(double.infinity, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: textBold14,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: lightFiltersTextButtonColor,
      padding: EdgeInsets.all(0),
      textStyle: textMedium16,
    ),
  ),
);

/// Экран поиска - темная тема
final ThemeData darkFiltersScreenTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: darkBackgroundColor,
  scaffoldBackgroundColor: darkBackgroundColor,
  buttonColor: darkFiltersButtonColor,
  cardColor: darkFiltersTypeSwithOffColor,
  dividerColor: darkFiltersTypeSwithOnColor,
  primaryTextTheme: TextTheme(
    subtitle1: textRegular16White,
    subtitle2: textRegular12White,
  ),
  sliderTheme: SliderThemeData(
    trackHeight: 2,
    activeTrackColor: darkFiltersSliderActiveTrackColor,
    inactiveTrackColor: darkFiltersSliderInactiveTrackColor,
    thumbColor: darkFiltersSliderThumbColor,
    rangeThumbShape: RoundRangeSliderThumbShape(
      enabledThumbRadius: 8,
      elevation: 4,
    ),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 8),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: darkFiltersElevatedButtonColor,
      minimumSize: Size(double.infinity, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      textStyle: textBold14,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: darkFiltersTextButtonColor,
      padding: EdgeInsets.all(0),
      textStyle: textMedium16,
    ),
  ),
);

/// Экран Настройки - светлая тема
final ThemeData lightSettingsScreenTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightBackgroundColor,
  buttonColor: lightSettingsButtonColor,
  primaryTextTheme: TextTheme(
    headline6: textMedium18LuckyPoint, // Заголовок в AppBar
    subtitle1: textRegular16LuckyPoint,
  ),
  dividerTheme: DividerThemeData(
    space: 1,
    thickness: 1,
  ),
);

/// Экран Настройки - темная тема
final ThemeData darkSettingsScreenTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: darkBackgroundColor,
  scaffoldBackgroundColor: darkBackgroundColor,
  buttonColor: darkSettingsButtonColor,
  primaryTextTheme: TextTheme(
    headline6: textMedium18White, // Заголовок в AppBar
    subtitle1: textRegular16White,
  ),
  dividerTheme: DividerThemeData(
    space: 1,
    thickness: 1,
  ),
);
