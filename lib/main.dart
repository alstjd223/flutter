import 'package:flutter/material.dart';
import 'pages/subject_page.dart';
import 'components/subject_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '학습앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

// stateful 위젯 사용
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('학습앱 메인 페이지'),
      ),
      body: Container(
        // size, styles 사용
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.blue[600]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '과목을 선택하세요',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // component 폴더 별도로 분리해서 사용
                SubjectButton(subject: '수학', imageNames: ['현우진.png', '정승제.png']),
                SubjectButton(subject: '국어', imageNames: ['강민철.png']),
                SubjectButton(subject: '영어', imageNames: ['이명학.png']),
                SubjectButton(subject: '사탐', imageNames: ['이다지.png']),
                SubjectButton(subject: '과탐', imageNames: [
                  '고석용(화학).png',
                  '배기범(물리).png',
                  '오지훈(지구).png',
                  '윤도영(생명).png',
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
