
import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_colors.dart';
import 'package:sabak_16_bmi_snippets_1/theme/app_text_style.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
     required this.icon,
    required this.text, required this.isTrue,
  });

  final IconData? icon;
  final String text;
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: isTrue ? AppColors.pinkColor:null,size: 80,),
        Text(text,style: AppTextStyles.textStyle)
      ],
    );
  }
}