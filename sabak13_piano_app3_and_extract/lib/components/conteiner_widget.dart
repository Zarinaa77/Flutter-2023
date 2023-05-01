import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key,required this.containerdinTexti,required this.containerdinTexti2,required this.containerdinsurotu});
  final String containerdinTexti, containerdinTexti2;
  final String containerdinsurotu;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          )
        ],

      color:Colors.grey[300],),
        child:Center(
          child: Column(children: [
            Text(containerdinTexti),
            Text(containerdinTexti2),
            Container(
              width: 35,
              height: 35,
              child: Image.network(
                containerdinsurotu
              ),
            )
          ],),
        )
    );
  }
}