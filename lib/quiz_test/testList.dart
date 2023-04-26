import 'package:flutter/material.dart';

import 'package:informatica_study_guide/quiz_test/home.dart';

class TestList extends StatefulWidget {
  const TestList({Key? key}) : super(key: key);
  @override
  _TestList createState() => _TestList();
}

class _TestList extends State<TestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Тест"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade400,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Пройти тест",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
