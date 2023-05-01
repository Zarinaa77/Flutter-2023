import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            "https://cdni.iconscout.com/illustration/premium/thumb/login-3305943-2757111.png",
            width: 250,
            height: 200,
          ),
          SizedBox(
            height: 10,
          ),

          //Welcome!

          Center(
              child: Text(
            'Hello!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
          SizedBox(height: 10),
          Text(
            "Welcome back, you\'ve been missed!",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),

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
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                    ),
                  ),
                )),
          ),
          SizedBox(height: 10),

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
                  child: TextField(
                    obscureText: true,
                    //obscureText: true не показывает пароль
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                )),
          ),
          SizedBox(height: 20),

          //sign in button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              minimumSize: const Size(320, 60),
            ),
            onPressed: () {},
            child: const Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),

          SizedBox(height: 15),

          //Create Account or Forgot password

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
    );
  }
}
