import 'package:flutter/material.dart';
import 'package:sabak16_bmi_snippets/theme/app_colors.dart';

class StatusCardSlider extends StatefulWidget {
  const StatusCardSlider({
    Key? key,
    required this.text,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text, text1, text2;
  @override
  
  _StatusCardSliderState createState() => _StatusCardSliderState();
}
class _StatusCardSliderState extends State<StatusCardSlider> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.fonminiColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text1,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                Text('${(_currentSliderValue).round()}',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),  Text(widget.text2,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w300)), ],
            ),
                SizedBox(
                  width: 300,
                  child: Slider(
                    value: _currentSliderValue,
                    min:0,
                    max:220,
                    divisions: 220,
                    inactiveColor: AppColors.greylineColor,
                    activeColor: AppColors.whiteColor,
                    thumbColor: AppColors.pinkColor,
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
          ],
        ),
      ),
    );
  }
}