import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sabak_16_bmi_snippets_1/components/status_card.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_colors.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_text.dart';
import 'components/calculate_Button.dart';
import 'components/height.dart';
import 'components/male_female.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0A001f),
        appBar: AppBar(
          backgroundColor: AppColors.fonColor,
          title: const Center(child: Text(AppTexts.bmi)),
          elevation: 0,
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
          child: Column(
            children: [
//////MaleFemale кнопки

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
                            text: AppTexts.male,
                            isTrue: isTrue,
                          )),
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
                            text: AppTexts.female,
                            isTrue: !isTrue,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),

              /// Для ролл кнопки Height

              StatusCard(
                child: Height(
                  text: AppTexts.height,
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

              /// для кнопок WeightAge

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
                        setState(() {
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
                          setState(() {
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
        bottomNavigationBar: CalculateButton(onPressed: () {
          final res = weight / pow(height / 100, 2);
          if (res <= 18.5) {
            //print('Сиз арыксыз:$res');
          _showAlertDialog(context,'Сиз арыксыз');
          } else if (res >= 18.6 && res <= 25) {
            //print('Сиз нормалдуусуз:$res');
            _showAlertDialog(context,'Сиз нормалдуусуз');
          } else if (res >= 25.1 && res <= 30) {
          //  print('Сиз Ашыкча салмактуусуз:$res');
            _showAlertDialog(context,'Сиз ашыкча салмактуусуз');
          } else {
           // print('Сиз семизсиз:$res');
             _showAlertDialog(context,'Сиз семизсиз');
          }
        }
        ),
        );
  }
}
Future<void> _showAlertDialog(BuildContext context,String text) async{
  return showDialog<void>(context: context, barrierDismissible: false,
  builder: (BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.fonminiColor,
      title:Center(child: const Text
       ('BMI CALCULATOR',textAlign: TextAlign.center,)),
      content: Text(text),
      actions: <Widget>[
        
        TextButton(child: const Text('Чыгуу'),
        onPressed: (){
          Navigator.of(context).pop();
        },)
      ],
  
    );
  }
  );
  }

