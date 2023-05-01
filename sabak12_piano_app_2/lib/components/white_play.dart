import 'package:flutter/material.dart';

class whitePlay extends StatelessWidget {
  const whitePlay({super.key, required this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 250,
        width: 75,
        color: Colors.white,
      ),
    );
  }
}
