
import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_snippets_1/components/circular_button.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_text_style.dart';

class Weightage extends StatelessWidget {
  const Weightage({
    super.key,
    required this.text,
    required this.san,
     required this.addbasuu, 
     required this.removebasuu,
  });

  final String text;
  final String san;
final void Function() addbasuu;
final void Function() removebasuu;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.textStyle),
        Text(san.toString(), style: AppTextStyles.santextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircularButton(icon: Icons.remove, basuu: removebasuu,
            ),
            const SizedBox(
              width: 10,
            ),
            CircularButton(icon: Icons.add, basuu: addbasuu,
            ),
          ],
        )
      ],
    );
  }
}
