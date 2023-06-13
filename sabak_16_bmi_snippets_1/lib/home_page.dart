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
  bool isTrue = true;
  int weight = 60;
  int age = 18;
  double height = 180;
double metri = 0.0;
  int salmak = 0;

   void resultattar() {
    setState(() {
      metri = weight / pow(height / 100, 2);
      if (metri <= 18.5) {
        salmak = 1; // Арыксыз
      } else if (metri >= 18.6 && metri <= 25) {
        salmak = 2; // Нормалдуу
      } else if (metri >= 25.1 && metri <= 30) {
        salmak = 3; // Ашыкча салмактуусуз
      } else {
        salmak = 4; // Семизсиз
      }
    });
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
                          isTrue = true;
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
                          isTrue = false;
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
                text1: '${height.round()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(() {
                    height = value;
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
                          weight--;
                        });
                      },
                      addbasuu: () {
                        setState(()  {
                          weight++;
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
                            age++;
                          });
                        },
                        removebasuu: () {
                          setState((){
                          age--;
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
          resultattar();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(metri: metri, salmak: salmak),
            ),
          );
        },
      ),
    );
  }
}