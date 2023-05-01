import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surName,
      required this.age,
      required this.gender,
      required this.email,
      this.marriage,
      this.phone,
      required this.group,
      required this.image});


 final int id;
final String image;
 final String name;
 final String surName;
  int age;
 String? phone;
 final String email;
String? marriage;
 final String gender;
  int group;
  
}

final aybek = Student(
    id: 1,
    image: 
      'https://media.istockphoto.com/id/531870656/photo/smiling-young-asian-man-face-close-up.jpg?s=170667a&w=0&k=20&c=PASM64Y854zS24Rzh_QZOiuB36_WfW5nR_z_-eKKbQk=',
    name: 'Aibek',
    surName: "Asanov",
    age: 24,
    group: 5,
    phone: "+996502356547",
    email: "Aibek.asanov1@gmail.com",
    marriage: 'single',
    gender: 'male',
    );

final bakyt = Student(
    id: 2,
    image: 'https://media.istockphoto.com/id/1217962587/photo/portrait-of-a-young-confident-smiling-asian-chinese-businessman.jpg?s=612x612&w=0&k=20&c=_2_An_UyM2EiLreTqEj3i8RciDlcSaRdvss6e1ZOqP8=',
    name: 'Bakyt',
    surName: "Usonov",
    age: 23,
    group: 5,
    phone: "+996505327469",
    marriage: 'single',
    email: "Bakyt.usonov@gmail.com",
    gender: 'male');
    

final zamira = Student(
    id: 3,
    image: 'https://media.licdn.com/dms/image/C5603AQG7afEpRgQdFg/profile-displayphoto-shrink_800_800/0/1620633091269?e=2147483647&v=beta&t=spCsGBReCfnev-1ynefqHiLtQCI29HM7Ao4fi8bjVv4',
    name: 'Zamira',
    surName: "Nurdinova",
    age: 23,
    group: 5,
    phone: "+996772356987",
    marriage: 'married',
    email: "z.nurdinova@gmail.com",
    gender: 'female',
   );

final turat = Student(
    id: 4,
    image:'https://blairdefense.com/wp-content/uploads/2020/06/8N6A9740.jpg',
    name: 'Turat',
    surName: "Kaparov",
    age: 20,
    group: 5,
    phone: "+996705328569",
    marriage: 'married',
    email: "turat.kaparov@gmail.com",
    gender: 'male',
);

final ainura = Student(
    id: 5,
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBJlDmjWYnYKMLFRDftE9jo9G9KHEBnb3PWddQ844CQXZ3E6Sl_YFJINYXdWLacisym_Q&usqp=CAU',
    name: 'Ainura',
    surName: "Alimova",
    age: 25,
    group: 5,
    phone: "+996706235845",
    marriage: 'married',
    email: "Ainura.alimova@gmail.com",
    gender: 'female',
    );

final jypara = Student(
    id: 6,
    image:'https://m.media-amazon.com/images/M/MV5BNDY4ZDg5NDktODU2MS00MmU2LTg3Y2YtZTFkMmZjZTZkYjQ2XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg',
    name: 'Jypara',
    surName: "Akylbekova",
    age: 24,
    group: 5,
    phone: "+996705356369",
    marriage: 'married',
    email: "jypar22@gmail.com",
    gender: 'female',
    );

final sergei = Student(
    id: 7,
    image:'https://images.squarespace-cdn.com/content/v1/602ca921f31b0e49a2bcbb7e/1616444927335-AMWHMZ537P3E86M9T28I/20171003_Singh_Law_Firm_0066+copy.jpg?format=1000w',
    name: 'Sergei',
    surName: "Ivanov",
    age: 22,
    group: 5,
    phone: "+996773526585",
    marriage: 'single',
    email: "s.ivanov@gmail.com",
    gender: 'male',
    );

final gulaiym = Student(
    id: 8,
    image:'https://media.licdn.com/dms/image/C4E03AQG6H5Vud2JyUQ/profile-displayphoto-shrink_800_800/0/1649952383831?e=2147483647&v=beta&t=asjIvp4ZF-FB2zcsoz68FjCZ-E_iXibxI6bDx9cCflw',
    name: 'Gulaiym',
    surName: "Aidarova",
    age: 20,
    group: 5,
    phone: "+996555328569",
    marriage: 'single',
    email: "g.aidarova@gmail.com",
    gender: 'female',
    );

final jibek = Student(
    id: 9,
    image: 'https://media.licdn.com/dms/image/C4D03AQEO5jFnKID4Aw/profile-displayphoto-shrink_800_800/0/1543430248118?e=2147483647&v=beta&t=4dKtTtpOu8DDJr7QCaNrP-w5Oot0sJlVj91WuMApJpo',
    name: 'Jibek',
    surName: "Akmatova",
    age: 21,
    group: 5,
    phone: "+996503658594",
    marriage: 'single',
    email: "j.akmatova@gmail.com",
    gender: 'female',
);

final aikyn = Student(
    id: 10,
    image:
      'https://media.istockphoto.com/id/614315942/photo/portrait-of-asian-chinese-businessman.jpg?s=612x612&w=0&k=20&c=pothieEuIAio8P7GZcAdVMZ2jQUqupBAZy4q8oFrQ-c=',
    name: 'Aykyn',
    surName: "Alimov",
    age: 23,
    group: 5,
    phone: "+996708023654",
    marriage: 'single',
    email: "a.Alimov@gmail.com",
    gender: 'male',
    );


