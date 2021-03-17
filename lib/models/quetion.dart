import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title: 'Архитектурные подходы',
        answers: [
          {'answers': 'Уроки по BLoC',},
          {'answers': 'Уроки по MOBx',},
          {'answers': 'Уроки по Redux',},
          {'answers': 'Уроки Hooks in Dart Flutter', 'isCorrect':1},

        ]),
    Question(
        title: 'Верстка, дизайн',
        answers: [
          {'answers': 'Плейлист «Speed UI coding',},
          {'answers': 'Разработка игр на Flutter', 'isCorrect':1},
        ]),
    Question(
        title: 'Планы по курсам',
        answers: [
          {'answers': 'Чуть более подробные уроки Dart ',},
          {'answers': 'Курс «Делаем простое приложение QUIZ. Базовые основы Flutter»', 'isCorrect':1},
          {'answers': 'Курс «Делаем простое приложение ToDo на основе Provider»',},
          {'answers': 'Курс «Делаем погодное приложение. Асинхронный подход и Навигация»',},

        ]),
  ];
  List<Question> get questions => [..._data];
}
