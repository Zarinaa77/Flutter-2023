import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key,required this.count});
 final int count;
 // В Flutter  все является виджетом(кнопки, списки, текст и т.д)
//Наиболее простые виджеты наследуется от StatelessWidget класса
//и не имеют состояния
  @override
  Widget build(BuildContext context) {
    // функция build отвечаетза построение иерархии виджетов 
    return Scaffold(backgroundColor: Colors.white,
appBar:AppBar(
  // создаем appBar c текстом
  //текст предварительно вложен в Center виджет
  //чтоб выровнять его по центру
  title:const Center(child: Text("Тапшырма 2"),
  //настройка темы
  ),
  elevation: 0,
  //elevition убрали в AppBar тень поставивь ноль.
  ),
body:Center(
 //аppBar, создаем Column вниз
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  
    Card(color: Colors.grey,
  //Card  создаем кнопку с параметрами 
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Theme.of(context).colorScheme.outline,
  
        ),
  
        borderRadius: BorderRadius.circular(10),
    ),

        child:SizedBox(
          width: 300,
          height: 50,
          child: Center(child:Text("Сан:$count",
          style: const TextStyle(
            fontSize: 20,
   //fontSize-размер шрифта
            fontWeight: FontWeight.w400),)),
  //fontWeight-жирность шрифта
        )
  
    ),
  
  ],),
)
    );
    
  }
}