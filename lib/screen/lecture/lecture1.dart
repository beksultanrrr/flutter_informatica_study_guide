import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:informatica_study_guide/screen/lecture/lectureList.dart';
import 'package:informatica_study_guide/quiz_test/testMain.dart';

class Lecture extends StatefulWidget {
  const Lecture({Key? key}) : super(key: key);
  @override
  _LectureState createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset("assets/lecture1.jpeg"),
            Image.asset("assets/lecture2.jpeg"),
            Image.asset("assets/lecture3.jpeg"),
            Image.asset("assets/lecture4.jpeg")
          ],
        ),
      ),
    );
  }
}
