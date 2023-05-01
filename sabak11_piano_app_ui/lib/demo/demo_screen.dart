import 'package:flutter/material.dart';
import 'package:sabak11_piano_app_ui/components/demo_black_key.dart';
import 'package:sabak11_piano_app_ui/components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
     width: double.infinity,
     height: 380,
     child: Stack(children: [
       ListView.builder(
         itemCount: 7,
         scrollDirection: Axis.horizontal,
         itemBuilder:(BuildContext context, index) {
          //ак кнопка учун
         return DemoWhiteKey();
       }),
       //кара кнопкаларын тузобуз
      Row(children: [
        SizedBox(width: 70,),
        DemoBlackKey(fileName: 'zvuk-notyi-do.mp3'),
        SizedBox(width: 30,),
        DemoBlackKey(fileName: 'zvuk-notyi-re.mp3',),
        SizedBox(width: 140,),
        DemoBlackKey(fileName: 'zvuk-notyi-mi.mp3',),
         SizedBox(width: 30,),
        DemoBlackKey(fileName: 'zvuk-notyi-fa.mp3',),
        SizedBox(width: 30,),
        DemoBlackKey(fileName: 'zvuk-notyi-sol.mp3',),
      ],)
       ], 
     ), 
      ),
    );
      
  }
}
