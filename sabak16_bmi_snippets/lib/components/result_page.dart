import 'package:flutter/material.dart';

import 'package:sabak16_bmi_snippets/theme/app_colors.dart';
import 'package:sabak16_bmi_snippets/theme/app_text_style.dart';
import '../theme/app_text.dart';
import 'all_calculator.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  // Конструктор класса ResultPage, который принимает значения metri и salmak

  final double metri;
  final int salmak;
 // Поля класса для хранения значений metri и salmak
  @override
  Widget build(BuildContext context) {
    double resultattar =BmiCalculator().bmi(height:metri,weight:salmak);
    // Поля класса для хранения значений metri и salmak
   
    return Scaffold(
      backgroundColor: AppColors.fonColor,
      appBar: AppBar(title: const Text('ResultPage'),
       // Верхняя панель приложения (app bar) с заголовком 'ResultPage'
    ),
    body: Padding(padding: const EdgeInsets.only(left:11,right:9,top:43),
      // Отступы для содержимого страницы
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Размещение элементов по горизонтали слева
      children: [
        const Padding(padding: EdgeInsets.only(left:14),
      child: Text(
        'Жыйынтык',
         // Заголовок 'Жыйынтык'

        style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
      ),
      ),
      Container(
        height: 315,
        width: 380,
        // Размеры контейнера
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
                // Оформление контейнера
          color: AppColors.fonminiColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Размещение элементов по вертикали с равным пространством между ними
            children: [
              // Результат BMI
              Text(BmiCalculator().bmiResult(resultattar.toString()),
              style: const TextStyle(fontSize: 24,color: Color(0xff08e82c)),
              ),
               // Значение BMI
              Text(resultattar.toStringAsFixed(1)
                ,style: const TextStyle(fontSize: 80),
              ),
               // Описание BMI
              Text(BmiCalculator().bmiDescription(resultattar.toString()),
              style: const TextStyle(fontSize: 12,
              ),
              ),
            ],
          ),
      ),
    ],
    ),
    ),
    bottomNavigationBar: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed: (){},
      child: const Text (
        AppTexts.kayraEsepte,
        style: AppTextStyles.calculateStyle,
      ),
    ),
  );
}
}