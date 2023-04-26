import 'package:flutter/material.dart';
import 'package:informatica_study_guide/Buttons/choicLecture.dart';
import 'package:informatica_study_guide/components/button.dart';
import '../components/searchBar.dart';
import '../models/button_model.dart';
import '../quiz_test/testList.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final buttons = [
    ButtonModel(
        titleText: "Лекций",
        image: "assets/video-lecture.png",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChoiceLecture()),
          );
        }),
    ButtonModel(
        titleText: "Тесты",
        image: "assets/qa.png",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TestList()),
          );
        }),
    ButtonModel(
        titleText: "Ответы на вопросы",
        image: "assets/question.png",
        ontap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                child: Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.blue),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Учебное пособие по информатике",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        searchBar(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: buttons.length,
                  itemBuilder: (context, index) {
                    final button = buttons[index];
                    return Button(
                        image: Image.asset(button.image ?? ' '),
                        ontap: button.ontap,
                        titleText: button.titleText);
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
