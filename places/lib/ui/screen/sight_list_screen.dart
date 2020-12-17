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
        title: Text(
          appBarText,
          style: textBold32,
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 72,
      ),
    );
  }
}
