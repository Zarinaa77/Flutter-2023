import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fonColor,
      appBar: AppBar(
        title: const Text('ResultPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 43),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Жыйынтык',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 315,
            width: 380,
            color: AppColors.fonminiColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text('Нормалдуу',
                    style:
                        TextStyle(fontSize: 24, color: AppColors.greenColor)),
                Text('24.2', style: TextStyle(fontSize: 80)),
                Text('Сиздин дене саламгыныз нормалдуу. Азаматсыз! ',
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

