import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class MyPiano extends StatefulWidget {
  const MyPiano({super.key});

  @override
  State<MyPiano> createState() => _MyPianoState();
}

class _MyPianoState extends State<MyPiano> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,
          title: const Text("MyPiano",style: TextStyle(color: Colors.black),),
        ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
        children: const [
          buildKey(fileName: 'zvuk-notyi-do.mp3', color: Colors.red,),
            buildKey(fileName: 'zvuk-notyi-re.mp3', color: Colors.orange,),
              buildKey(fileName: 'zvuk-notyi-mi.mp3', color: Colors.yellow),
                buildKey(fileName: 'zvuk-notyi-fa.mp3', color: Colors.green,),
                  buildKey(fileName: 'zvuk-notyi-sol.mp3', color: Colors.blue,),
                    buildKey(fileName: 'zvuk-notyi-lya.mp3', color: Colors.purple,),
                      buildKey(fileName: 'zvuk-notyi-si.mp3', color: Color.fromARGB(255, 233, 99, 143),),
                      buildKey(fileName: 'zvuk-notyi-do-vo-vtoroy-oktave.mp3', color: Colors.grey,),
             
        ],
      ),
      )
    );
  }
}
class buildKey extends StatelessWidget {
  const buildKey({
    super.key, required this.fileName, required this.color
  });
final String fileName;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: (){
          final player=AudioPlayer();
          AssetSource src=AssetSource('$fileName');
          player.play(src);
        }, 
        child: Text(''),
        ),
    );
  }
}