import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/strings.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            // appBarText,
            style: textBold32,
            children: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'С',
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(
                    text: 'писок\n',
                  ),
                ],
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: 'и',
                    style: TextStyle(color: Colors.yellow),
                  ),
                  TextSpan(
                    text: 'нтересных мест',
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 72,
      ),
    );
  }
}
