import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/screen/app_com.dart';
import 'package:places/ui/screen/res/themes.dart';

/// Карточка места базовая без кнопок
class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard({this.sight});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSightCardTheme
          : lightSightCardTheme,
      child: Builder(
        builder: (BuildContext context) {
          return AspectRatio(
            aspectRatio: 3.0 / 2.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: [
                  Container(
                    color: Theme.of(context).backgroundColor,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 96,
                          child: Container(
                            child: Stack(
                              children: [
                                Image.network(
                                  sight.url,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes
                                            : null,
                                      ),
                                    );
                                  },
                                ),
                                Positioned(
                                  left: 16,
                                  top: 16,
                                  child: Text(
                                    sight.type.name,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .subtitle2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 92,
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  sight.name,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  sight.detail,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText2,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: () {
                        print('Tap sight card');
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// TextButton с иконкой из svg-файла для карточки места
class SightCardButton extends StatelessWidget {
  SightCardButton({
    Key key,
    @required this.onPressed,
    @required this.iconSvgAssetName,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String iconSvgAssetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: TextButton(
        onPressed: onPressed,
        child: SvgIcon(iconSvgAssetName: iconSvgAssetName),
      ),
    );
  }
}

/// Карточка места для списка интересных мест
class SightCardList extends StatelessWidget {
  final Sight sight;
  const SightCardList({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSightCardTheme
          : lightSightCardTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              SightCard(sight: sight),
              Positioned(
                right: 16,
                top: 16,
                child: SightCardButton(
                  onPressed: () {
                    print("Favorite button pressed");
                  },
                  iconSvgAssetName: icon_heart,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Карточка места, которое планируется посетить
class SightCardToVizit extends StatelessWidget {
  final Sight sight;
  const SightCardToVizit({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSightCardTheme
          : lightSightCardTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              SightCard(sight: sight),
              Positioned(
                right: 56,
                top: 16,
                child: SightCardButton(
                  onPressed: () {
                    print("Calendar button pressed");
                  },
                  iconSvgAssetName: icon_calendar,
                ),
              ),
              Positioned(
                right: 16,
                top: 16,
                child: SightCardButton(
                  onPressed: () {
                    print("Close button pressed");
                  },
                  iconSvgAssetName: icon_close,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Карточка места, где уже был
class SightCardVizited extends StatelessWidget {
  final Sight sight;
  const SightCardVizited({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: (Theme.of(context).brightness == Brightness.dark)
          ? darkSightCardTheme
          : lightSightCardTheme,
      child: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              SightCard(sight: sight),
              Positioned(
                right: 56,
                top: 16,
                child: SightCardButton(
                  onPressed: () {
                    print("Share button pressed");
                  },
                  iconSvgAssetName: icon_share,
                ),
              ),
              Positioned(
                right: 16,
                top: 16,
                child: SightCardButton(
                  onPressed: () {
                    print("Close button pressed");
                  },
                  iconSvgAssetName: icon_close,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
