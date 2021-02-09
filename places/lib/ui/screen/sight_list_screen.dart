import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 128), // 64 - 24 + 72 + 16
      body: SingleChildScrollView(
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
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, @required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        margin: EdgeInsets.only(top: 40, bottom: 16),
        child: Text(
          appBarText,
          style: textBold32,
        ),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      toolbarHeight: height,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
