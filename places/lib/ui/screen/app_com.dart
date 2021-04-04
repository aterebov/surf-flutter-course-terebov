import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Основное меню приложения
class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({Key key, @required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Theme.of(context).backgroundColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "",
        ),
      ],
    );
  }
}

/// Иконка с текущим цветом темы иконки из svg-файла
/// При использовании в [TextButton] и [ElevatedButton]
/// позволяет отрисовать иконку с цветом, соотвествующим
/// цвету текста заданного в [ButtonStyle] кнопки или темы кнопки
class SvgIcon extends StatelessWidget {
  final String iconSvgAssetName;

  const SvgIcon({
    Key key,
    this.iconSvgAssetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);
    final Color svgColor = iconTheme.color;

    return SvgPicture.asset(
      iconSvgAssetName,
      color: svgColor,
    );
  }
}

/// ElevatedButton с иконкой из svg-файла
class SvgElevatedButton extends StatelessWidget {
  SvgElevatedButton({
    Key key,
    @required this.onPressed,
    @required this.iconSvgAssetName,
    @required this.label,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String iconSvgAssetName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIcon(iconSvgAssetName: iconSvgAssetName),
          SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}

/// TextButton с иконкой из svg-файла
class SvgTextButton extends StatelessWidget {
  SvgTextButton({
    Key key,
    @required this.onPressed,
    @required this.iconSvgAssetName,
    @required this.label,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String iconSvgAssetName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIcon(iconSvgAssetName: iconSvgAssetName),
          SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
