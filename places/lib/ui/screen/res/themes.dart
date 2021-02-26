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
);

/// Карточка места - темная тема
final ThemeData darkSightCardTheme = ThemeData(
  backgroundColor: darkSightCardBackgroundColor,
  primaryTextTheme: TextTheme(
    subtitle2: textBold14White,
    bodyText1: textMedium16White,
    bodyText2: textRegular14SlateGrey,
  ),
);

/// Детализация места - светлая тема
final ThemeData lightSightDetailTheme = ThemeData(
  backgroundColor: lightBackgroundColor,
  dividerColor: lightSightDetailDividerColor,
  buttonColor: lightSightDetailButtonColor,
  primaryTextTheme: TextTheme(
    bodyText1: textBold24BlueZodiac,
    bodyText2: textRegular14BlueZodiac,
    subtitle1: textRegular14SlateGrey,
    subtitle2: textBold14BlueZodiac,
  ),
);

/// Детализация места - темная тема
final ThemeData darkSightDetailTheme = ThemeData(
  backgroundColor: darkBackgroundColor,
  dividerColor: darkSightDetailDividerColor,
  buttonColor: darkSightDetailButtonColor,
  primaryTextTheme: TextTheme(
    bodyText1: textBold24White,
    bodyText2: textRegular14White,
    subtitle1: textRegular14SlateGrey,
    subtitle2: textBold14SlateGrey,
  ),
);
