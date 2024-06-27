import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  final String subject;
  final List<String> imageNames;

  SubjectPage({required this.subject, required this.imageNames});

  // sample data 이용
  final Map<String, String> teacherDescriptions = {
    '강민철': '메가스터디의 국어 영역 대표 강사.',
    '정승제': 'EBSi와 이투스의 수학 영역 대표 강사.',
    '고석용(화학)': '메가스터디의 과학탐구 영역 화학 강사.',
    '배기범(물리)': '메가스터디의 과학탐구 영역 물리학 강사.',
    '오지훈(지구)': '메가스터디의 과학탐구 영역 대표 강사로, 지구과학을 가르친다.',
    '윤도영(생명)': '대한민국의 과학탐구 영역 생명과학Ⅰ 강사이자 입시 분석가.',
    '이다지': '메가스터디의 사회탐구 영역 역사 강사이자 한국사 영역 대표 강사.',
    '이명학': '대성마이맥 대표 강사.',
    '현우진': '대한민국의 인터넷 강사. 메가스터디 수학 영역 대표 강사.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$subject 페이지'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: imageNames.length,
        itemBuilder: (context, index) {
          String imageName = imageNames[index];
          String teacherName = imageName.split('.')[0];
          String description = teacherDescriptions[teacherName] ?? '설명이 없습니다';

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // asset 이미지 사용
                Image.asset('assets/$imageName'),
                SizedBox(height: 8),
                Text(
                  '강사: $teacherName',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '설명: $description',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
