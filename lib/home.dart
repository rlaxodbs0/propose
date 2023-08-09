import 'package:flutter/material.dart';

import 'package:propose/widgets/welcome.dart';
import 'package:propose/widgets/introduction.dart';
import 'package:propose/widgets/gallery.dart';
import 'package:propose/widgets/map.dart';
import 'package:propose/widgets/congratulation_gift.dart';
import 'package:propose/widgets/credit.dart';
import 'package:propose/widgets/custom_divider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Welcome(),
            Introduction(),
            CustomDivider(),
            Gallery(),
            CustomDivider(),
            Map(),
            CustomDivider(),
            CongratulationGift(),
            Credit()
          ],
        ),
      ),
    );
  }
}