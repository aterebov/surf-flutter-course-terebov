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
        title: Text(
          'Список\nинтересных мест',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: 72,
      ),
    );
  }
}
