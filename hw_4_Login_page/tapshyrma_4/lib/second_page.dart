import 'dart:html';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
  //В AppBar пишем текст Second Page
        backgroundColor: Colors.white,
        title: const Center(
            child: Text("Second Page", style: TextStyle(color: Colors.orange,fontSize: 20))),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [        
          const Text(
            "I'm rich",
//body пишем текст I'm rich и распологаем в центре
            style: TextStyle(
                fontSize: 55,
                fontFamily: 'Pacifico-Regular',
                color: Colors.white),
          ),
          SizedBox(
// в данном случаи SizedBox можно использовать для установки ограничений размера дочернего виджета
            width: 280,
//width-ширина
            height: 280,
//height-высота
            child: Image.asset(
              "assets/rube.png",
            ),
          )
//в Image.asset указываем путь картинки
        ],
      )),
    );
  }
}
