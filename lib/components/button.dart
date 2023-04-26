import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.image,
      required this.ontap,
      required this.titleText});
  final Function() ontap;
  final Image image;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: GestureDetector(
        child: Container(
          color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              image,
              Text(
                titleText,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
