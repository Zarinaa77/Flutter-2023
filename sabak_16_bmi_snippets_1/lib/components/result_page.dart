import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_snippets_1/components/all_calculator.dart';
import '../theme/app_colors.dart';

class ResultPage extends StatelessWidget {
  final double metri;
  final int salmak;

  const ResultPage({Key? key, required this.metri, required this.salmak})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bmi = salmak / (metri * metri / 10000); // Расчет значения BMI

    return Scaffold(
      backgroundColor: AppColors.fonColor,
      appBar: AppBar(
        title: const Text('ResultPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 11, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Жыйынтык',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Container(
                height: 315,
                width: 380,
                color: AppColors.fonminiColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      BmiCalculator().bmiResult(bmi),
                      style: const TextStyle(
                          fontSize: 24, color: AppColors.greenColor),
                    ),
                    Text(
                      bmi.toStringAsFixed(1),                 // Вывод значения BMI с округлением до одного знака после запятой
                      style: const TextStyle(fontSize: 80),
                    ),
                    Text(
                      BmiCalculator().bmiDescription(bmi),    // Определение описания BMI
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
