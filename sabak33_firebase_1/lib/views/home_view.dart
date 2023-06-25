import 'package:flutter/material.dart';
import 'package:sabak33_firebase_1/views/todo_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeView'),
      ),
      body: Column(
        children: [
        ElevatedButton(style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey
        ),
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>const TodoView(),
            ),
            );
          }, 
        child:const Icon(Icons.arrow_forward,
        color: Colors.white,))
      ]),
    );
  }
}