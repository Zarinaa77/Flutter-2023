

import 'package:flutter/material.dart';
import 'package:sabak16_bmi_snippets/theme/app_colors.dart';

import 'circular_button.dart';


class StatusCard2 extends StatelessWidget {
  int index=0;
  StatusCard2({super.key, required this.text, required this.san,});

  final String text;
  final int san;


  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.fonminiColor,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children:  [ 
     Text(text,
     style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
     Text(san.toString(),
     style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w800)
     ),
     
     Row(mainAxisAlignment: MainAxisAlignment.center,
       children:[
         CircularButton(icon: Icons.remove),
         SizedBox(width: 10,),
         CircularButton(icon:Icons.add),
       ],
     )
            ],
            
            ),
            ),);
  }
}
