import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //функция build отвечает за построение иерархии виджетов
    return MaterialApp(
      //виджет MaterialApp главный виджет приложения 
      debugShowCheckedModeBanner: false,
      //убираем банне debug
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Text(
              "Тапшырма 3",
              style: TextStyle(color: Colors.black),
            ), 
// создаем appBar c текстом
//текст предварительно вложен в Center виджет
//чтоб выровнять его по центру, c помощью backgrounColor ставим цвет.
          ),
          elevation: 8,
//elevition убрали в AppBar тень поставивь ноль.
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children:[
 // mainAxisAlignment: MainAxisAlignment.center текст переносим на центр
          const Text("I'am Rich",
              style: TextStyle(
                fontSize: 40,
// fontSize- размер шрифта
                fontFamily: 'Sofia-Regular',
// fontFamily-указываем название шрифта             
                fontWeight: FontWeight.w500),
// fontWeight: жирность  шрифта
                ),
      SizedBox(
 // в данном случаи SizedBox можно использовать для установки ограничений размера дочернего виджета
        width: 240,
//width-ширина 
        height: 240,
//height-высота
        child:Image.asset("assets/images/rube.png",),)
 //в Image.asset указываем путь картинки
        ]),
      ),
    );
  }
}
