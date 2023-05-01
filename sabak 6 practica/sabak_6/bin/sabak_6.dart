import 'package:sabak_6/sabak_6.dart' as sabak_6;

void main(){



  //*
  /*
// List[]
  List printList=["Bilim",20,10.5,1000,true,false,20];
  print(printList);
//Set{} listтен айрымасы озгормону бир эле жолу алат(окшоштукту албайт)
Set printSet={true,false,100,40.5,"Bilim56165"};
print(printSet);
//Map{} биринчи ключту алат анан анын маанисин алат
Map printMap={"Hello":"Salam",20:"Free","Follow":30};
print(printMap);
*/

//generic<> String дегенди дженерикке койдук жалан стринг тилин гана кабыл алды
List birList = <String>["Salam","bvhfdj","bvhjbv"];
print(birList);
List ekiList = <int>[10,20,15,3];
print(ekiList);
Map birMap= <dynamic,String>{10:"Hey",25:"Wow"};
print(birMap);
}