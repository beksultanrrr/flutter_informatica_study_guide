import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText = 'Отлично!';
    if (resultScore >= 8) {
      resultText = 'Distinction :) \n Хорошо! \n';
    } else if (resultScore >= 5) {
      resultText = '\n Average\n Сделано лучше, но вы все еще можете сделать лучше \n';
    } else {
      resultText = '\n Плохая оценка :(\и нужно больше практики ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text(
              'Пройти тест заново !',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
