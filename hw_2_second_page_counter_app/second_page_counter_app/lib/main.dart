import 'package:flutter/material.dart';
import 'package:second_page_counter_app/secondPage.dart';

    void main() {
     runApp(const MyApp());
  }
//Основная функция main-не имеет оператора return и не принимает параметров(), {}-тело функции.
//Внутри тело находиться RunApp(Начало создания приложения, это виджет идет от материала
      class MyApp extends StatelessWidget {
       const MyApp({super.key});
 //Главными элементами приложения на Flutter являются Виджеты.Виждеты это строительные блоки пользовательского интерфейса.
 // Этот виджет является корнем вашего приложения
  @override
         Widget build(BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
 //убрали в углу слово на краю -false или true
                title: 'Flutter Demo',
                   theme: ThemeData(
// theme- тема вашего приложения.
// Приложения имеет зеленую панель инструментов.
        primarySwatch: Colors.green,
          ),
         home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    }

          class MyHomePage extends StatefulWidget {
          const MyHomePage({super.key, required String title});
  @override
  //@override аннотация переопределения указывает нато, что  последующее описание функции заменяет функцию 
  //суперкласса от которого идет наследование.
           State<MyHomePage> createState() => _MyHomePageState();
        }
            class _MyHomePageState extends State<MyHomePage> {
            int index=0;
 @override
           Widget build(BuildContext context) {
           return Scaffold(backgroundColor: Colors.white,
          appBar: AppBar(
              centerTitle: true,
  //centerTitle:true перенесли текст в центр AppBara 
                    backgroundColor: Colors.white,
                        title:const Center(
                             child: Text(
                                    "Тапшырма 1",
              style:TextStyle(color: Colors.black),
 // child -виджет дочерный элемент
//В AppBare написали текст черным цветом а цвет фона полностью сделали белым scaffold.
             ),
           ),
          elevation: 0,
  //elevition убрали в AppBar тень поставивь ноль.
        ),
              body:Padding(
               padding:const EdgeInsets.symmetric(horizontal: 8),
                   child:Center(
                     child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                           children:[
 //аppBar, создаем Column вниз(колона иконок), роу рядом 
                  Container(
  //Виджет container создаем кноку для Сан, ширина до конца.
                 width:double.infinity,
        height:40,
        child:Center(
    child:Text("Сан:$index",
         style: const TextStyle(fontSize: 20),
             )),
          decoration: BoxDecoration(
               color:Colors.grey,borderRadius: BorderRadius.circular(10)),
  // decoration добавили цвет кнопке и скруглили кнопку(фоновое оформление контейнера)
                    ),
                      const SizedBox(
                         height:25,
 // height -высота контейнера
                           ),
       Row(
  // Роу кнопку ставит рядом(паралельно)
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ElevatedButton(
                      onPressed: (){
                        setState(() {
  // setState(() { вызывает перестроение виджета
                          index--;
              });
              },
              child: const Icon(Icons.remove)),
              const SizedBox(width:25),
 // sizedBox разделил 2 кнопки расстояние 25 пиксел.
              ElevatedButton(
                 onPressed: () {
                   setState(() {
                    index++;
                  });
                },
                child: const Icon(Icons.add)), 
 // ElevationButton создаем кнопку onPressed чтоб можно было нажимать      
                ],
                  ),
                  const SizedBox(height: 35,),
  // Расстояние между кнопками
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondPage(
                        count:index,
                        )));
  // Создали иконки,чтоб можно было нажимать и переходить на новую страницу
                    },icon:const Icon(Icons.next_plan,size:40,
                    color: Colors.red,)),
                   ],
                     ),
                       ),
                         )
                          );
                            }
                             }