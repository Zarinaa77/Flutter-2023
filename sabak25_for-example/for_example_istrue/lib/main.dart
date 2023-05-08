import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:ForExample(),
    );
  }
}
class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}
bool gender= true;
class _ForExampleState extends State<ForExample> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:const Text('ForExample')),
      ),
      body: Center(child: GestureDetector(
        onTap: (){
          setState(() {
            if (gender ==true){
              gender =false;
              }else{
                gender=true;
              }
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color:gender? Colors.blue:Colors.yellow,
              child: gender? const Icon(Icons.male,color: Colors.white,):const Icon(Icons.female,color: Colors.white,),
              ),
              const SizedBox(width: 20,),
              Container(
              width: 100,
              height: 100,
              color:gender? Colors.yellow:Colors.blue,
              child: gender? const Icon(Icons.female,color: Colors.white,):const Icon(Icons.male,color: Colors.white,),
              ),
          ],
            )
        ),
      )
      );
  }
}

