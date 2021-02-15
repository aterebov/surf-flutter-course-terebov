import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка места
class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard({this.sight});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0 / 2.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          // height: 188,
          color: Color(0xFFF5F5F5),
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
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          );
                        },
                      ),
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Text(
                          sight.type,
                          style: textBold14White,
                        ),
                      ),
                      Positioned(
                        right: 18,
                        top: 19,
                        child: Container(
                          width: 20,
                          height: 18,
                          color: Colors.white,
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
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        sight.name,
                        style: textMedium16,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        sight.detail,
                        style: textRegular14SlateGrey,
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
      ),
    );
  }
}

/// Карточка места, которое планируется посетить
class SightCardToVizit extends SightCard {
  SightCardToVizit({Sight sight}) : super(sight: sight);
}

/// Карточка места, где уже был
class SightCardVizited extends SightCard {
  SightCardVizited({Sight sight}) : super(sight: sight);
}
