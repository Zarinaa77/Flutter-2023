
import 'package:flutter/cupertino.dart';
import 'package:sabak16_bmi_snippets/theme/app_text_style.dart';
import '../theme/app_colors.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.text,
    required this.text1,
    required this.text2, required this.height, required this.onChanged,
  });

  final String text;
  final String text1;
  final String text2;
  final double height;
  final void Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style:  AppTextStyles.textStyle
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(text1,
              style:AppTextStyles.textStyle,
            ),
           
            Text(text2,
                style: AppTextStyles.textStyle
                ),
          ],
        ),
        
        SizedBox(
          width: 300,
          child: CupertinoSlider(
            value: height,
            min: 0,
            max: 240,
          // inactiveColor: AppColors.greylineColor,
            activeColor: AppColors.whiteColor,
            thumbColor: AppColors.pinkColor,
            onChanged: onChanged,
            ),
        ),
      ]
    );
  }
}
