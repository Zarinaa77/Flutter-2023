import 'package:flutter/material.dart';
import 'package:sabak6_extract_widget_constants/components/CustomButtom.dart';
import 'package:sabak6_extract_widget_constants/constants/text_style.dart';
import 'constants/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: const Text ("Components and constants",
        style: TextStyle(fontFamily: "Lobster-Regular"),)),
      ),
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(width: 430,child:
          Image.network("https://miro.medium.com/v2/resize:fit:1187/1*0FqDC0_r1f5xFz3IywLYRA.jpeg")),
          SizedBox(height: 20),
          
          const CustomButton(icon:Icons.phone,text: 'Менин телефонум'),

          const SizedBox(height: 10),
       
       const CustomButton(icon:Icons.email,text: "Электрондук почта",),
          
        ],
        ),
      )
    );
  }
}

