import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app.text_style.dart';
import 'package:sabak14_quize_app/constants/app_colors.dart';
import 'package:sabak14_quize_app/constants/texts.dart';
import 'package:sabak14_quize_app/useFile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon>iconAluu=[];

    void teksher(bool koldonuu) {
    setState(() {
      if (useQuize.isFinished() == false) {
        if (useQuize.joopAluu() == koldonuu) {
          iconAluu.add(const Icon(Icons.check, color: Colors.green));
        } else {
          iconAluu.add(const Icon(Icons.close, color: Colors.red));
        }
        useQuize.nextQuestion();
      } else {
        _showTestResultsDialog();
        useQuize.indexZero();
        iconAluu = [];
      }
    });
  }
    void _showTestResultsDialog() {
     int correctAnswers = iconAluu.where((icon) => icon.icon == Icons.check).length;
    int incorrectAnswers = iconAluu.where((icon) => icon.icon == Icons.close).length;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Текстин жыйынтыгы'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Туура жоптор: $correctAnswers'),
                Text('Туура эмес жооптор: $incorrectAnswers')
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                 setState(() {
                  useQuize.index;
               
                  iconAluu = [];
                 });
              },
            ),
            TextButton(
              child: const Text('Башына кайтуу'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  useQuize.index;
               
                  iconAluu = [];
                });
              },
            ),
          ],
        );
      },
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:AppColors.mainColor,
      appBar: AppBar(backgroundColor: AppColors.appBarColor,
      title: const Center(
        child: Text('Тапшырма 7',
        style: AppTextStyles.appBarTextStyle,
        ),
       ),
       elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                useQuize.surooAluu(),
            style:AppTextStyles.appTextStyle,
            textAlign: TextAlign.center,
            ),

            const SizedBox(height: 102,),

            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.truebegColor),  
                onPressed: () {
                  teksher(true);
                  },
                
              child: const Text(
                AppTexts.tuura,
                style: AppTextStyles.appTexttrueStyle,
              )
              ),
            ),

            const SizedBox(height: 30,),

             SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(backgroundColor: AppColors.falsebegColor),
                onPressed: () {
                  teksher(false);
                }, 
              child: const Text(
                AppTexts.tuuraEmes,
                style: AppTextStyles.appTexttrueStyle,
              )),
            ),
       
           SizedBox(height: 40,
             child: ListView.builder(
               itemCount: iconAluu.length,
              scrollDirection: Axis.horizontal,
               itemBuilder: (context,index){
                return iconAluu[index];
               }),
           )
          ],
         ),
        ),
      ),
    );
  }
}