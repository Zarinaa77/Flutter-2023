
import 'package:flutter/material.dart';
import 'package:sabak16_bmi_snippets/theme/app_text_style.dart';
import '../theme/app_colors.dart';
import '../theme/app_text.dart';

class CalculateButton extends StatelessWidget {
const CalculateButton({super.key, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        minimumSize:const Size(double.infinity, 73),
      ),
      onPressed: () {},
     
      child:const Text(AppTexts.calculator,style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
