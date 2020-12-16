import 'package:flutter/material.dart';

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
            style: TextStyle(
              fontFamily: 'roboto',
              fontStyle: FontStyle.normal,
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
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
