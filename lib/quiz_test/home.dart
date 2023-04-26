import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
/*import './question.dart';
import './answer.dart';*/
import 'quiz.dart';
import 'result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final _questions = const [
    {
      'questionText': ' Выберите верное утверждение: энтропия максимальна,если:',
      'answers': [
        {'text': 'информация засекречена', 'score': 0},
        {'text': 'события детерминированы', 'score': 1},
        {'text': 'события равновероятны', 'score': 0},
        {'text': 'информация точна', 'score': 0},
      ],
    },
    {
      'questionText':
          'Выберите верное утверждение: свойство информации,заключающееся в достаточности данных для принятия решения, есть',
      'answers': [
        {'text': 'объективность', 'score': 1},
        {'text': 'Полнота', 'score': 0},
        {'text': 'содержательность', 'score': 0},
        {'text': 'достоверность', 'score': 0},
      ],
    },
    {
      'questionText': 'Выберите верное утверждение: информация достоверна, если она:',
      'answers': [
        {'text': 'полезна', 'score': 0},
        {'text': 'отражает истинное положение дел', 'score': 1},
        {'text': 'достаточна для принятия решений', 'score': 0},
        {'text': 'используется в современной системе обработки информации.', 'score': 0},
      ],
    },
    {
      'questionText':
          'Выберите верное утверждение: в вычислительной технике в качестве основной используется _________система счисления:',
      'answers': [
        {'text': 'шестнадцатеричная', 'score': 0},
        {'text': 'десятичная', 'score': 0},
        {'text': 'восьмеричная', 'score': 0},
        {'text': 'двоичная', 'score': 1},
      ],
    },
    {
      'questionText':'Выберите верное утверждение: сканирование книги является операцией _______ данных:',
      'answers': [
        {'text': 'верификации', 'score': 0},
        {'text': 'преобразования', 'score': 0},
        {'text': 'архивирования', 'score': 0},
        {'text': 'транспортировки', 'score': 1},
      ],
    },
    {
      'questionText':
          'Укажите, какой из перечисленных терминов обозначает программы, обеспечивающие взаимодействие ОС с периферийными устройствами:',
      'answers': [
        {'text': 'контроллер', 'score': 0},
        {'text': 'транслятор', 'score': 1},
        {'text': 'драйвер', 'score': 0},
        {'text': 'компилятор', 'score': 0},
      ],
    },
    {
      'questionText':
          'Укажите, что определяет расширение файла:',
      'answers': [
        {'text': 'размер', 'score': 0},
        {'text': 'имя', 'score': 0},
        {'text': 'тип', 'score': 2},
        {'text': 'расположение', 'score': 0},
      ],
    },
    {
      'questionText':
          'Выберите правильные варианты: при проектированиипрограммного обеспечения используют подходы:',
      'answers': [
        {'text': 'сверху-вниз', 'score': 2},
        {'text': 'снизу-вверх', 'score': 0},
        {'text': 'слева-направо', 'score': 0},
        {'text': 'справа-налево', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalscore = 0;
  }

  void _answerQuestions(int score) {
    //var aBool=true;

    _totalscore = _totalscore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (kDebugMode) {
      print(_questionIndex);
    }
    if (_questionIndex < _questions.length) {
      if (kDebugMode) {
        print('We have more questions!');
      }
    } else {
      if (kDebugMode) {
        print('No more questions!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тест Лекций1 '),
        backgroundColor: Colors.cyan,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestions: _answerQuestions,
              questionIndex: _questionIndex,
              questions: _questions,
            ) //
          : Result(_totalscore, _resetQuiz),
    );
  }
}
