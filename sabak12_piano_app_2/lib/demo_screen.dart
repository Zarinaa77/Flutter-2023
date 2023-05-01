
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak12_piano_app_2/components/white_play.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piano Screen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-do.mp3'));
                Container(color: Colors.black,width: 40,height: 80,);
              }),
              const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-re.mp3'));
               }),
               const SizedBox(
                width: 10,
              ), 
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-mi.mp3'));
               }),
               const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-fa.mp3'));
               }),
              const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-sol.mp3'));
               }),
               const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-lya.mp3'));
               }),
               const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-si.mp3'));
               }),
              const SizedBox(
                width: 10,
              ),
               whitePlay(onTap: (){
                AudioPlayer().play(AssetSource('zvuk-notyi-do-vo-vtoroy-oktave.mp3'));
               }),
           ],
          ),
        ]),
      ),
    );
  }
}

