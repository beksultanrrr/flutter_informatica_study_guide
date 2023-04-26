import 'package:flutter/material.dart';

class LectureButton extends StatelessWidget {
  const LectureButton(
      {super.key,
      required this.titleText,
      required this.descrText,
      required this.onTap});
  final Function() onTap;
  final String titleText;
  final String descrText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.grey.shade200,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleText,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                descrText,
                style: const TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ));
  }
}
