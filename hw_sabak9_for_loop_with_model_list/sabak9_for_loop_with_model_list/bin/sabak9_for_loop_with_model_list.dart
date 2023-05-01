
import 'package:sabak9_for_loop_with_model_list/model.dart';

final studentter = <Student>[ Aybek,Aikyn,Ainura,Bakyt,Sergei,Jibek,Jypara,Gulaiym,Turat,Zamira];

void main() {
 controlNameEmail('Gulaiym','g.aidarova@gmail.com' );
}

void controlNameEmail(String name,String email){
  for (final Student in studentter){
  if (name == Student.name && email== Student.email){
    //name Gulaiym &&email g.aidarova@gmail.com
    // Gulaiym 8 болгондуктан break менен цикл токтоп калды.
    print('Kosh keliniz:${Student.name}');
    break;
    }else {
      print('Sizdin atynaz jana pochtanyz tuura emes');
    }
  }
  }

