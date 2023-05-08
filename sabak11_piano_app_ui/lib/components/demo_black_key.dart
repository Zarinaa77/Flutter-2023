import 'package:flutter/material.dart';


class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({
    super.key,
     this.fileName,
  });
  final String ?fileName;
  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Expanded(
          child: Container(
              color: isPressed ? Colors.grey[600] : Colors.black,
              width: 80,
              height: 210,
              child: Stack(
                alignment: isPressed ? Alignment.topCenter : Alignment.center,
                children: [
                  Transform(
                    transform: Matrix4.rotationX(0.0),
                    child: Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[850],
                        radius: 10,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
