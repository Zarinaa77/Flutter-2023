import'package:sabak14_quize_app/model.dart';


class UseQuize{
int index=0;
int incorrectAnswers=0;
  int correctAnswers = 0;

  List <QuizeModel> surooJoop = [
QuizeModel(suroo:'Flutter мобилдик тиркемелерди иштеп чыгуу үчүн фреймворкбу?', joop: true),
QuizeModel(suroo: 'Flutter Kotlin программалоо тилин колдонобу?', joop: false),
QuizeModel(suroo: 'Flutter колдонуучу интерфейсин куруу үчүн виджеттерди колдонобу?', joop: true),
QuizeModel(suroo: 'Flutter Androidди гана колдойбу?', joop: false),
QuizeModel(suroo: 'Flutter программасында тиркемелерди жазуу үчүн Dart программалоо тилин билишиңиз керекпи?', joop: true),
QuizeModel(suroo: 'Flutterде сиз колдонмоңузга функция кошуу үчүн даяр пакеттерди колдоно аласызбы??', joop: true),
QuizeModel(suroo: 'Flutter сизге кооз жана анимацияланган колдонуучу интерфейстерин түзүүгө мүмкүндүк береби?', joop: true),
  ];
   get indexZero => 0;
String surooAluu() {
    return surooJoop[index].suroo;
  }

  bool joopAluu() {
    return surooJoop[index].joop;
  }

  void nextQuestion() {
  if (index < surooJoop.length - 1) { 
    index++;
  } else {
    index = 0;
  }
}
bool isFinished() {
  if (index == surooJoop.length - 1) {
    return true;
  } else {
    return false;
  }
}
  
   int getScore() {
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  for (QuizeModel q in surooJoop) {
    if (q.joop) {
      correctAnswers++;
    } else {
      incorrectAnswers++;
    }
  }
  print('Correct answers: $correctAnswers');
  print('Incorrect answers: $incorrectAnswers');
  return correctAnswers;
}
}