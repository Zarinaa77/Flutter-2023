import 'package:flutter/material.dart';

class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  bool isTrue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap:(){
              isTrue=true;

            } ,
              child: Container(width: 50, height: 50, color:isTrue==true? Colors.red:Colors.green)),
            const SizedBox(height: 20),
            InkWell(onTap:(){

            },child: Container(width: 50, height: 50, color:isTrue==false? Colors.red:Colors.green)),
          ],
        ),
      ),
    );
  }
}