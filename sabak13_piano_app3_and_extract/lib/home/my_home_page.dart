import 'package:flutter/material.dart';
import 'package:sabak13_piano_app3_and_extract/components/conteiner_widget.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey,
          title: const Text("Extract Widget"),
        ),
        body: Center(
          child: Column(
            children:const[
              ContainerWidget(containerdinsurotu: 'data:image/png;base64,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',
              containerdinTexti: 'Kyrgyzstan',
               containerdinTexti2: 'Bishkek',
               
               ),
              SizedBox(height: 10,),
               ContainerWidget(containerdinTexti: 'Kazahstan',
                containerdinTexti2: 'Astana',
                containerdinsurotu: 'data:image/png;base64,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',
                ),
               SizedBox(height: 10,),
                ContainerWidget(containerdinTexti: 'China',
                containerdinTexti2: 'Pekin',
                containerdinsurotu: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/320px-Flag_of_the_People%27s_Republic_of_China.svg.png',
                ),
                SizedBox(height: 10,),
                 ContainerWidget(containerdinTexti: 'Germany',
                 containerdinTexti2: 'Berlin',
                 containerdinsurotu: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/2560px-Flag_of_Germany.svg.png',
                 ),
                 SizedBox(height: 10,),
                  ContainerWidget(containerdinTexti: 'Turkey',
                  containerdinTexti2: 'Ankara',
                  containerdinsurotu: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/320px-Flag_of_Turkey.svg.png',
                  ),
                  SizedBox(height: 10,),
                   ContainerWidget(containerdinTexti: 'USA',
                   containerdinTexti2: 'Washington',
                   containerdinsurotu: 'https://png.pngtree.com/element_pic/00/16/09/2757ea8843c5d7d.jpg',
                   ),
                        ],
          ),
        ),
      ),
    );
  }
}

