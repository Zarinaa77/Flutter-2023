import 'package:flutter/material.dart';

import 'package:sabak16_bmi_snippets/theme/app_colors.dart';
import 'package:sabak16_bmi_snippets/theme/app_text_style.dart';

import '../theme/app_text.dart';
import 'all_calculator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    double resultattar =BmiCalculator().bmi(height:metri,weight:salmak);
    return Scaffold(
      backgroundColor: AppColors.fonColor,
      appBar: AppBar(title: const Text('ResultPage'),
    ),
    body: Padding(padding: EdgeInsets.only(left:11,right:9,top:43),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(padding: EdgeInsets.only(left:14),
      child: Text(
        'Жыйынтык',
        style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
      ),
      ),
      Container(
        height: 315,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.fonminiColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(BmiCalculator().bmiResult(resultattar),
              style: TextStyle(fontSize: 24,color: Color(0xff08e82c)),
              ),
              Text(resultattar.toStringAsFixed(1)
                ,style: TextStyle(fontSize: 80),
              ),
              Text(BmiCalculator().bmiDescription(resultattar),
              style: TextStyle(fontSize: 12,
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