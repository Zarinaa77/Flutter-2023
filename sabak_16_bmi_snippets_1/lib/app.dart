import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_snippets_1/home_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
       theme:ThemeData.dark(),
      home: const MyHomePage(),
  );
}
}