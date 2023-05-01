import 'dart:math';

void main() {
 final number= Random().nextInt(15)+1;
 print('Random:$number');
 final num=Random().nextInt(20);
 print('Random:$num');
}

 //*
 /*
  
  print(koshuu(10, 10));  
  final dagyKosh = 40 + koshuu(15, 10);
  print('Дагы кошкондо:$dagyKosh');
  final kemit = 60 - koshuu(10, 10);
  print('Кемиткенде:$kemit');
  final koboit = 15 * dagyKosh;
  print('Кобойткондо:$koboit');
  final boluu = koboit / dagyKosh;
  print('Болгондо:$boluu');
  print("______________");
  print(kemituu(40, 9));
  final dagykemituu=50-kemituu(20, 5);
  print('Дагы кемитуу:$dagykemituu');
  
  print(koboyt(15, 20));
  print("______________");
  print(boluuu(81, 9));
  final daguboluu=koboit/boluuu(23, 5);
  print(daguboluu);
  
  print(boluuu(23, 5));
  print (takboluu(23,5));
  print('пайыз');
  //*%
  print(payiz(25, 3));
  print(a);
  print(a.length);
  // нолунчу элементин коргозуу
  print(a[0]);

print(a[3]);
}

//функция туробуз ал intiger  кайтарсын
//(int a, int b) бул функциянын параметри
int koshuu(int a, int b) {
  final result = a + b;
  return result;
}

int kemituu(int a, int b) {
  final summa = a - b;
  return summa;
}

num koboyt(num a,num b){
  final summasy =a*b;
  return summasy;
}

num boluuu(num a,num b){
  final summasy =a/b;
  return summasy;
}
num takboluu(num a,num b){
  final summ=a~/b;
  return summ;
}

num payiz(num a,num b){
  final summ=a % b;
  return summ;
}

List a =<String>["a","b","c","d"];

*//
*/