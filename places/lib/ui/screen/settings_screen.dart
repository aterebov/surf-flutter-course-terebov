import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/main.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/screen/app_com.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Экран Настройки
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSettingsScreenTheme
          : lightSettingsScreenTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(settingsAppBarText),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              toolbarHeight: 56,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 8.0),
                  Container(
                    height: 56.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          settingsDarkThemeText,
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                        Container(
                          height: 32,
                          width: 56,
                          child: CupertinoSwitch(
                            value: appSettings.isDarkTheme,
                            onChanged: (value) {
                              setState(() {
                                appSettings.setDarkTheme(value);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 48.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          settingsViewHelpText,
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          child: TextButton(
                            onPressed: () {
                              print("Info button pressed");
                            },
                            style: TextButton.styleFrom(
                              primary: Theme.of(context).buttonColor,
                              padding: EdgeInsets.all(0),
                            ),
                            child:
                                SvgIcon(iconSvgAssetName: "res/image/info.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            bottomNavigationBar: AppBottomNavigationBar(currentIndex: 3),
          );
        },
      ),
    );
  }
}
