import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Introduction extends StatelessWidget {
  final _googleFormUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSclkvTK_DejlTSwYQq7upONAE6oDF2C3k2CrSbY-bXIw9mEEA/viewform?usp=sf_link';

  void _launchURL() async => await canLaunch(_googleFormUrl)
      ? await launch(_googleFormUrl)
      : throw 'Could not launch $_googleFormUrl';

  Widget _buildName(String father, mother, order, name) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(father, style: TextStyle(fontSize: 15)),
            Text(mother, style: TextStyle(fontSize: 15)),
          ],
        ),
        Text('  의 $order  '),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Image.asset(
                'assets/images/hand.png',
                fit: BoxFit.contain,
              ),
            ),
            AutoSizeText('초대합니다',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            AutoSizeText(
              '평생을 함께하고 싶은 사람을 만났습니다.\n' +
              '그 사람과 사랑의 결실을 맺고자 합니다.\n' +
              '서로 아끼고 의지하며 예쁘게 살겠습니다.\n' +
              '저희 두 사람이 사랑의 결실을 맺을 수 있도록\n' +
              '축북해 주시면 감사하겠습니다.❤',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 50),
            _buildName('김동현', '신혜란', '장남', '태윤'),
            SizedBox(height: 30),
            _buildName('***', '***', '장녀', '성은'),
            SizedBox(height: 50),
            AutoSizeText('2022년 11월 11일 토요일\n낮 12시 30분',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            AutoSizeText(
              '청주에서 출발하는 버스대절을 위해 \n 청주에서 출발하시는 인원 파악해야합니다 😢\n번거로우시겠지만, 청주에서 버스를 이용하여 참석하시는 분은 아래 설문조사에 응해 주시면 \n정말 정말 감사하겠습니다 ❤',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL(),
              child: Text('설문조사 하기'),
            )
          ],
        ));
  }
}