import 'package:flutter/material.dart';
import '../pages/subject_page.dart';

class SubjectButton extends StatelessWidget {
  final String subject;
  final List<String> imageNames;

  SubjectButton({required this.subject, required this.imageNames});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          // size, styles 사용
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                // page 폴더 별도로 분리해서 사용
                builder: (context) => SubjectPage(subject: subject, imageNames: imageNames),
              ),
            );
          },
          child: Text(subject),
        ),
      ),
    );
  }
}
