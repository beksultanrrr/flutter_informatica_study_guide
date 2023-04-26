import 'package:flutter/material.dart';

import 'package:informatica_study_guide/screen/lecture/lecture1.dart';
import 'package:informatica_study_guide/screen/lecture/lecture2.dart';
import 'package:informatica_study_guide/screen/lecture/lecture3.dart';
import 'package:informatica_study_guide/screen/lecture/lecture4.dart';
import 'lectureButton.dart';

class LectureList extends StatefulWidget {
  const LectureList({Key? key}) : super(key: key);
  @override
  _LectureList createState() => _LectureList();
}

class _LectureList extends State<LectureList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            LectureButton(
                titleText: "Лекция 1",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture()),
                  );
                }),
            LectureButton(
                titleText: "Лекция 2",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture2()),
                  );
                }),
            LectureButton(
                titleText: "Лекция 3",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture3()),
                  );
                }),
            LectureButton(
                titleText: "Лекция 4",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lecture4()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
