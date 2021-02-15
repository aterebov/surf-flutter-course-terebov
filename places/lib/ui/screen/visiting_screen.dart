import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/screen/app_com.dart';
import 'package:places/ui/screen/sight_card.dart';

/// Экран Избранное
class VisitingScreen extends StatelessWidget {
  const VisitingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            favAppBarText,
            style: textMedium18LuckyPoint,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          toolbarHeight: 56,
        ),
        body: Column(
          children: [
            Container(
              height: 52,
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: tabbarColorBackground,
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: tabbarColorIndicator,
                ),
                labelColor: textColorWhite,
                labelStyle: textBold14,
                unselectedLabelColor: textColorSlateGrey,
                unselectedLabelStyle: textBold14,
                tabs: [
                  Tab(
                    text: favToVizitText,
                  ),
                  Tab(
                    text: favVizitedText,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: SightCardToVizit(sight: mocks[0]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: SightCardVizited(sight: mocks[1]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: SightCardVizited(sight: mocks[2]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: SightCardVizited(sight: mocks[3]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 2,
        ),
      ),
    );
  }
}
