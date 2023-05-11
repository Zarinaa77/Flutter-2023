import 'package:flutter/material.dart';
class Konguroo extends StatefulWidget {
  const Konguroo({super.key});

  @override
  State<Konguroo> createState() => _Konguroo_rasState();
}

class _Konguroo_rasState extends State<Konguroo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/Fon.png'),
          ),
        ),
    ),
    
    );
  }
}