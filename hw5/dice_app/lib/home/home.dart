
import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});
 
  @override
  State<DiceApp> createState() => _DiceAppState();

}

class _DiceAppState extends State<DiceApp> {
 int firstDice=1;   
  int secondDice=1;
  void change(){
    setState(() {
      firstDice=Random().nextInt(6) +1;
       secondDice=Random().nextInt(6) +1;
      
    });
  //функция change(эч нерсе кайтарбайт) ге setState салып 
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (backgroundColor:const Color(0xffFFE93B),
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text ("Тапшырма 5",
        style:TextStyle(color:Colors.black)
        ),
        elevation: 0,
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisAlignment менен так ортосуна жайгаштырабыз
        children: [
          if (firstDice == 6)
          Container(
            height: 35,
            width: 150,
            color: Colors.yellow,
          child: const Text('Жениш!! Куттуктайбыз!',style:TextStyle(color: Colors.red)),
         ),
        
          const SizedBox(height:25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          // padding колдонуп symmetric аркылуу горизонталын 25 пикселге туртуп коебуз.
          child: Row(children: [
            //Row озуно children алат, демек жанына дагы бир сурот койду image.asset колдонуп
            Expanded(child: InkWell(
              onTap:(){
                change();
              },splashColor: Colors.red,
              child: Image.asset('assets/images/dice$firstDice.png'))),
              //dice тан кийин $ озгормо коюлду
              //Image ке InkWell деген виджет алабыз,onTap колдонуп кнопканы басма кылабыз.
            // Inkwell компоненттери колдонуучу чычканды басканда "суу толкуну" эффектин көрсөтөт
            const SizedBox(width: 25),
            //SizedBox менен аралыгын алыстатабыз(width-ширина)
            Expanded(child: InkWell(
              onTap:(){
                change();
              },
              splashColor:Colors.red ,child: Image.asset('assets/images/dice$secondDice.png'))),
             //Expanded экрандын коломуно тендеп коет,озунун боштугун ээлейт
          ],
          ),
        )
      ],
      )
    );
  }
}
