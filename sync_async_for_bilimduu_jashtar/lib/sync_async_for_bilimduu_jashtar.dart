import 'dart:io';

int calculate() {
  return 6 * 7;
}

// void main() {
//   resulttasks();
// }
// Future<void> resulttasks() async {
// task1();
// String stringTask2 =await task2();
// task3(stringTask2);
// }

// void task1(){
//   print('task 1 чыкты'); 
// }
// Future<String> task2()async{
//   Duration threeSeconds=Duration(seconds: 3);
//   //sleep(threeSeconds);
//   String ?result;
//  await Future.delayed(threeSeconds,(){
//   result ='Task 2 data';
//     print('task 2 чыкты');
//   });
//   return result.toString();
// } 

// void task3(String task2String){print('task 3 чыкты');
// }
import'package:dio/dio.dart';

void main() async {
  final dio=Dio();
  final response=await dio.get('https://jsonplaceholder.typicode.com/posts');
print (response);
}


