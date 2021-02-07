import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/text_styles.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard({this.sight});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 188,
        color: Color(0xFFF5F5F5),
        child: Column(
          children: [
            Expanded(
              flex: 96,
              child: Container(
                color: Colors.lightBlueAccent[100],
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 16,
                      child: Text(
                        sight.type,
                        style: textSightCardType,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      sight.name,
                      style: textSightCardName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      sight.detail,
                      style: textSightCardDetail,
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
    );
  }
}
