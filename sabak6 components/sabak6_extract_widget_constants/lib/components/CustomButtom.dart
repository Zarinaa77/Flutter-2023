import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.icon, required this.text});
 final IconData? icon;
 final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 430,
      child: ElevatedButton(
        onPressed: (){}, child: 
        Row(children:[
       Icon(icon),
      const SizedBox(width: 15),
        Text(text,style: const TextStyle(fontFamily: "Lobster-Regular"),),
      
      ],
      )),
    );
  }
}
