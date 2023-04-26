import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class Lecture4 extends StatefulWidget {
  const Lecture4({Key? key}) : super(key: key);
  @override
  _LectureState createState() => _LectureState();
}

class _LectureState extends State<Lecture4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Image.asset("assets/page8.jpeg"),
            Image.asset("assets/page9.jpeg"),
            Image.asset("assets/page10.jpeg"),
            Image.asset("assets/page11.jpeg")
          ],
        ),
      ),
    );
  }
}
