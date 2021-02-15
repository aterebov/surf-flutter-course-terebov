import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

class VisitingScreen extends StatelessWidget {
  const VisitingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Visiting Screen"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Хочу посетить",
              ),
              Tab(
                text: "Посещенные места",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: mocks
                      .map((e) => Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: SightCard(sight: e)))
                      .toList(),
                ),
              ),
            ),
            Text("Tab 2"),
          ],
        ),
      ),
    );
  }
}
