import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
final Student student;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Center(child: Text('Student card',style: TextStyle(color: Colors.white),)),
      ),
      body:SafeArea(
        child:Container(decoration: const BoxDecoration(image:DecorationImage(image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/1c/Europa_in_natural_color.png'),
          fit: BoxFit.cover
        ),
        ),
        child: Column(
            children:[ 
              Center(child: CircleAvatar(radius:100 ,backgroundImage:NetworkImage(student.image)),
            ),
            const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text('Student ID:',style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
                    Text(student.id.toString(),
                    style: const TextStyle(color: Colors.white
                    ,fontWeight: FontWeight.w600,fontSize: 15,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student's name:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.name,
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student's last name :",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.surName,
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student age:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.age.toString(),
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student group:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.group.toString(),
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student gender:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.gender,
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student marriage:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.marriage.toString(),
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Row(
                  children: [const Text("Student phone number:",style: TextStyle(color:Colors.white),),
                  const SizedBox(width: 15,),
              Text(student.phone.toString(),
              style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),),
               ],
                ),
              ),
            ],
          ),
      )),
      );
  }
}