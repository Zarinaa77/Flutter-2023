import 'package:flutter/material.dart';
class TodoView extends StatelessWidget {
  const TodoView({super.key});
  @override



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text('TodoView'),
    ),
    body: Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 15, 
        right: 10),
      child: Column(children: [
        TextFormField(
          controller^_titleController,
          validator: (value){
            if(value == null || value.isEmpty){
              return'Wright title';
              }else{

              
            }
          },
          decoration:const  InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            hintText: 'Title',
            
          ),
        ),
        const SizedBox(height: 10,),
        TextFormField(
          decoration:const  InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            hintText: 'Description',
          ),
        ),
        CheckboxListTile(
          value: isCompleted, 
          onChanged: (v){
            StepState((){
              isCompleted=v!;

            });
          },
          ),
          SizedBox(height: 10,),
          TextFormField(
          decoration:const  InputDecoration(
            border: OutlineInputBorder(),
            filled: true,
            hintText: 'Author',
            
          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey),
          onPressed: (){
            
            Navigator.push(context,
            MaterialPageRoute(builder: (C)=> const HomeView(),))
          }, icon: Icon(Icons.arrow_upward),
         label:const Text('Отправить',style: TextStyle(color: Colors.white),),
        ),

      ]
      ),
    ),
  );
}
}