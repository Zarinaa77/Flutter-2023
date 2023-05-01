
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key, required this.icon,});
    final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 35,width: 35,
     child: FloatingActionButton(backgroundColor: AppColors.greyColor,
       onPressed: (){},child: Icon(icon,color: AppColors.whiteColor,),));
  }
}
