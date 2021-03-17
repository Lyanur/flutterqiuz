import 'package:flutter/material.dart';
import 'package:quiz/models/quetion.dart';
import 'package:quiz/widgets/answer.dart';
import 'package:quiz/widgets/progressbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xffbd27ff)));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xff000000)));
        }

        _questionIndex += 1;
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            color: const Color(0xff2A375A),
            image: DecorationImage(
              image: AssetImage('assets/image/fon.jpg'),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: <Widget>[
            Progrssbar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(data.questions[_questionIndex].title,
                  style: Theme.of(context).textTheme.caption),
            ),
            ...data.questions[_questionIndex].answers
                .map((value) => Answer(
                      title: value['answers'],
                      onChangeAnswer: _onChangeAnswer,
                      isCorrect: value.containsKey('isCorrect') ? true : false,
                    )
            ).toList(),
          ],
        ),
      ),
    );
  }
}
