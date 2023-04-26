import 'package:flutter/material.dart';

import 'package:informatica_study_guide/screen/video_lecture/VideoLecture3.dart';
import 'package:informatica_study_guide/screen/video_lecture/VideoLecture4.dart';



import 'package:informatica_study_guide/screen/video_lecture/videoLecture1.dart';

import 'package:informatica_study_guide/screen/video_lecture/videoLecture2.dart';

import '../lecture/lectureButton.dart';

class VideoLectureList extends StatefulWidget {
  const VideoLectureList({Key? key}) : super(key: key);
  @override
  _VideoLectureList createState() => _VideoLectureList();
}

class _VideoLectureList extends State<VideoLectureList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
              LectureButton(
                titleText: "Лекция 3",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VideoLecture1()),
                  );
                }),
              LectureButton(
                titleText: "Лекция 2",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VideoLecture2()),
                  );
                }),
                   LectureButton(
                titleText: "Лекция 3",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VideoLecture3()),
                  );
                }),
                    LectureButton(
                titleText: "Лекция 4",
                descrText:
                    "Тема: Информация, информатика,информационные технологий",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VideoLecture4()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
