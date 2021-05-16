import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/screen/app_com.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Детализация места
class SightDetail extends StatelessWidget {
  final Sight sight;

  SightDetail({this.sight});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSightDetailTheme
          : lightSightDetailTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 360,
                          width: double.infinity,
                          child: Image.network(
                            sight.url,
                            fit: BoxFit.cover,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes
                                      : null,
                                ),
                              );
                            },
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 36,
                          child: Container(
                            width: 32,
                            height: 32,
                            child: ElevatedButton(
                              onPressed: () {
                                print("Arrow button pressed");
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).backgroundColor,
                                onPrimary: Theme.of(context).buttonColor,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              child: SvgIcon(iconSvgAssetName: icon_arrow),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  sight.name,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      sight.type.name,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle2,
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      detailButtonOpenTimeText,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .subtitle1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24.0),
                            child: Text(
                              sight.detail,
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText2,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24.0),
                            child: SvgElevatedButton(
                              onPressed: () {
                                print("Go button pressed");
                              },
                              iconSvgAssetName: icon_go,
                              label: detailButtonGoText,
                            ),
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(top: 24.0),
                            color: Theme.of(context).dividerColor,
                          ),
                          Container(
                            height: 48,
                            margin: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: SvgTextButton(
                                    onPressed: null,
                                    // onPressed: () {
                                    //   print("Plan button pressed");
                                    // },
                                    iconSvgAssetName: icon_calendar,
                                    label: detailButtonPlanText,
                                  ),
                                ),
                                Expanded(
                                  child: SvgTextButton(
                                    onPressed: () {
                                      print("Favorite button pressed");
                                    },
                                    iconSvgAssetName: icon_heart,
                                    label: detailButtonAddFavoritesText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
