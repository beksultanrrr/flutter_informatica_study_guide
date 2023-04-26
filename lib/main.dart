import 'package:flutter/material.dart';

import 'package:informatica_study_guide/screen/bottom_navigator.dart';
import 'package:informatica_study_guide/Buttons/choicLecture.dart';
import 'package:informatica_study_guide/quiz_test/testList.dart';

void main() =>  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> routes = {
      '/home': (context) => const BottomNavigator(),
      '/lecture': (context) => const ChoiceLecture(),
      '/test': (context) => TestList(),
    };
    // return ChangeNotifierProvider<TaskData>.value(
    //   value: TaskData(),
    return MaterialApp(
      title: 'My App',
      routes: routes,
      initialRoute: '/home',
    );
  }
}
