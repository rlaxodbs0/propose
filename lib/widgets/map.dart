import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final API_KEY = "AIzaSyCMwemJ4yJ41tx6AdGf1OH7Un6O8NUzPfw"; // API KEY를 넣어주세요

  Widget getMap() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src = 'https://www.google.com/maps/embed/v1/place?key=$API_KEY&q=Textile+Center,Seoul+Korea'; // embedded google map url
      return iframe;
    });

    return HtmlElementView(viewType: 'iframe');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            Text('오시는 길',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.5,
              child: getMap(),
            ),
            SizedBox(height: 20),
            Text('서울 강남구 테헤란로 518 섬유센터, \n 17층 스카이뷰섬유센터웨딩홀',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ));
  }
}