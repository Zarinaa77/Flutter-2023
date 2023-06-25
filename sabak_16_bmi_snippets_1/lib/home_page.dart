import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sabak_16_bmi_snippets_1/components/status_card.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_colors.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_text.dart';
import 'components/calculate_button.dart';
import 'components/height.dart';
import 'components/male_female.dart';
import 'components/result_page.dart';
import 'components/weight_age.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true; // Переключатель для выбора пола (true - мужской, false - женский)
  int weight = 60; // Начальное значение веса
  int age = 23; // Начальное значение возраста
  double height = 180; // Начальное значение роста

  void resulattar() {
    final res = weight / pow(height / 100, 2);
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      _showAlertDialog(context, 'Сиз Арыксыз');
    } else if (res >= 18.6 && res <= 25) {
      // print('Сиздин салмагыңыз нормалдуу:$res');
      _showAlertDialog(context, 'Сиздин салмагыңыз нормалдуу');
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз Ашыкча салмактуусуз:$res');
      _showAlertDialog(context, 'Сиз Ашыкча салмактуусуз');
    } else {
      // print('Сиз семиссиз:$res');
      _showAlertDialog(context, 'Сиз семиссиз');
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A001f),
      appBar: AppBar(
        backgroundColor: AppColors.fonColor,
        title: const Center(child: Text('BMI')),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true; // Выбран мужской пол
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: 'Male',
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 39,
                  ),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false; // Выбран женский пол
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: 'Female',
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            StatusCard(
              child: Height(
                text: 'Height',
                text1: '${height.toInt()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(() {
                    height = value;  // Обновление значения роста
                  });
                },
                height: height,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: Weightage(
                       text: AppTexts.weight,
                      san: '$weight',
                      removebasuu: () {
                        setState(() {
                          weight--;   // Уменьшение значения веса
                        });
                      },
                      addbasuu: () {
                        setState(()  {
                          weight++;   // Увеличение значения веса
                        });
                      },
                    )),
                       
                  const SizedBox(
                    width: 39,
                  ),
                  StatusCard(
                    child: Weightage(
                       text: AppTexts.age,
                        san: '$age',
                        addbasuu: () {
                          setState(() {
                            age--; //Уменьшение значения возраста
                          });
                        },
                        removebasuu: () {
                          setState((){
                          age++;  // Увеличение значения возраста
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onPressed: () {
          //resultattar();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                metri: height, 
                salmak: weight),
            ),
          );
        },
      ),
    );
  }
}
Future<void> _showAlertDialog(context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.fonColor,
        title: const Text(
          AppTexts.bmi,
          textAlign: TextAlign.center,
        ),
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Чыгуу'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
