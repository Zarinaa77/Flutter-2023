import 'package:flutter/material.dart';
import 'package:sabak_21_weather_app/constants/app_colors.dart';
import 'package:sabak_21_weather_app/constants/app_text_style.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: AppColors.appBgc,
        title: const Text(
          'ТАПШЫРМА-9',
          style: AppTextStyles.titleStyle,
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/fon.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.near_me, color: Colors.white),
                  Icon(Icons.location_city, color: Colors.white),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '8',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                      fontWeight: FontWeight.w500),
                ),
                Image.network(
                  'https://cdn0.iconfinder.com/data/icons/hotel-and-travel-2-1/52/56-512.png',
                  height: 150,
                  width: 150,
                )
              ],
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "You\'ll\n need\n and\n ",
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
            ),
            Align(alignment: Alignment.bottomCenter,child:
            Text(
              'Bishkek',
              style: TextStyle(color: Colors.white, fontSize: 80),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
