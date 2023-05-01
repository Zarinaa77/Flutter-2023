import 'package:flutter/material.dart';
import 'package:tapshyrma_4/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? email;
  // Функцияны жасоо void менен
  void ishtoo() {
    if (phoneNumber != null && email != null) {
      //!= барабар эмес дегенди билдирет, && жана дегенди билдирет
      // Эгер phoneNumber нуллга барабар болбосо жана емейл нуллга барабар эмес болсо
      if (phoneNumber!.isEmpty || email!.isEmpty) {
        // Эгер phoneNumber пустой болбосо жана емейл  пустой болбосо..анда
        isActive = false;
      } else {
        //else условия аткарылбаса
        isActive = true;
      }
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Material Designlдын визуалдуу макетин негизги структура кылганга ишке ашырат.
        backgroundColor: const Color(0xff056c5c),
        appBar: AppBar(
//AppBar создаем текст Тапшырма 4 
          backgroundColor: Colors.blue,
          title: const Center(
              child: Text(
            "Тапшырма 4",
            style: TextStyle(color: Colors.black),
          )),
          elevation: 0,
        ),
//body создаем тело 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ ClipOval(child:Image.network("https://png.pngtree.com/png-vector/20210221/ourmid/pngtree-illustration-of-female-programmer-at-work-png-image_2929274.jpg",
             height:150,width:150,fit: BoxFit.fill,),
             ),
              const Text(
                "Zarina Tuuganbaeva",
                style: TextStyle(
                    fontSize: 45,
                    fontFamily: 'Pacifico-Regular',
                    color: Colors.white),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto-Black',
                    color: Colors.white),
              ), 
              
              const Divider(
                height: 0,
                thickness: 2,
                indent: 57,
                endIndent: 47.5,
                color: Colors.white,
              ),
              
              const SizedBox(
                height: 23.5,
              ),
// Container создаем поле для иконки телефон и для номера телефона
              Container(
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056c5c),
                      fontWeight: FontWeight.w600),
                  onChanged: (String? value) {
                    phoneNumber = value;
                    ishtoo();
                    print("value:$value");
                    print("phoneNumber:$phoneNumber");
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Icon(Icons.phone, color: Color(0xff056C5C)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
// Container создаем поле для иконки почты назв. почты.
              Container(
                //поле для текста
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056C5C),
                      fontWeight: FontWeight.w600),
                  onChanged: (String? value) {
                    email = value;
                    ishtoo();
                    print("value:$value");
                    print("email:$email");
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xff056C5C),
                      ),
                    ),
                  ),
                ),
                
              ),
              const SizedBox(
                height: 20,
              ),
              
 // ЕlevatedButton менен Start деген кнопканы жасайбыз,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 2, color: Colors.white),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15)),
                onPressed: isActive
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondPage()));
                      }
                    : null,
               child: const Text("Start"),
          
          ),
         ]
        )
       ),
     );
   }
 }
