import 'package:flutter/material.dart';

class ForExample extends StatefulWidget {
  const ForExample({super. key});

  @override
  State<ForExample> createState() => _ForExampleState();
}
class _ForExampleState extends State<ForExample> {
  int number = 0;

  void incremeent(){
    setState(() {
      number++;
    });
  }

void decreement(){
  setState(() {
    number--;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Center(child: Text('FloatingActionButton')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(
                  "$number",
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Floating(
                    icon:const Icon(Icons.add),
                    function: incremeent,
                  ),
                  const SizedBox(width: 20,),
                  Floating(
                    icon:const Icon(Icons.remove),
                    function:decreement,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }   
}
    class Floating extends StatelessWidget{
      const Floating({
        super.key,
        required this.icon,
        required this.function,
      });
      final Icon icon;
      final void Function() function;

      @override
      Widget build (BuildContext  context){
        return FloatingActionButton(onPressed: function,child: icon,
        );
      }
    }
            