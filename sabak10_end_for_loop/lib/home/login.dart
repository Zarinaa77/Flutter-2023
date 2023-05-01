import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/home/user_page.dart';
import 'package:sabak10_end_for_loop/model.dart';
List studentter = <Student>[aybek,aikyn,ainura,bakyt,
sergei,jibek,jypara,turat,zamira,gulaiym];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name; 
  String? _gmail;

  void controlNameEmail(String name,String email){
    int index=0;
  for (final student in studentter){
  if (name == student.name && email== student.email){
    Navigator.push(
      context,MaterialPageRoute(
        builder:(context)=>UserPage(
          student: student,
        ),
    )
    );
    //name Gulaiym &&email g.aidarova@gmail.com
    // Gulaiym 8 болгондуктан break менен цикл токтоп калды.
    print('Kosh keliniz:${student.name}');
    break;
    }else {
      if(index==studentter.length){
        ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(content:Text('Sizdin Atynyz je pochtanyz tuura emes!'),
  )
);
      }else{
        continue;
      }
  
    }
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:
      SafeArea(
        child: Container(
          decoration: const BoxDecoration(image:DecorationImage(image:NetworkImage('https://images.unsplash.com/photo-1589810264340-0ce27bfbf751?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover
          ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              "https://cdni.iconscout.com/illustration/premium/thumb/login-3305943-2757111.png",
              width: 250,
              height: 200,
            ),
            const SizedBox(
              height: 10,
            ),
        
            //Welcome!
        
            const Center(
                child: Text(
              'Hello!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
            const SizedBox(height: 10),
            const Text(
              "Welcome back, you\'ve been missed!",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
        
            //email textield
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[150],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    //края сделали белым
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(onChanged: (String value){
                      _name=value;
                      print("Валуе иштеди $value");
                      print("Валуе иштеди $_name");
                    },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 10),
        
            //password textfield
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[150],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    //края сделали белым
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(onChanged: (String value){
                      _gmail=value;
                      print("Валуе иштеди $value");
                      print("Валуе иштеди $_gmail");
                    },
                      obscureText: false,
                      //obscureText: true не показывает пароль
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'E-mail',
                      ),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
        
            //sign in button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                minimumSize: const Size(310, 60),
              ),
              onPressed: () {
                controlNameEmail(_name!, _gmail!);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
        
            const SizedBox(height: 15),
        
            //Create Account or Forgot password
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Create Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.purple)),
                Text('  or'),
                Text(
                      '  Forgot password?',
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
