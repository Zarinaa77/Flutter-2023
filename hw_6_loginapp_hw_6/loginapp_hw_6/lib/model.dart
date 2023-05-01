import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.name,
      required this.surName,
      required this.age,
      required this.gender,
      required this.email,
      required this.marriage,
      required this.phone,
      required this.group});
  int id;
  String name;
  String surName;
  int age;
  String phone;
  String email;
  String marriage;
  String gender;
  int group;
}

final Aybek = Student(
    id: 1,
    name: 'Aibek',
    surName: "Asanov",
    age: 24,
    group: 5,
    phone: "+996502356547",
    email: "Aibek.asanov1@gmail.com",
    marriage: 'single',
    gender: 'male');

final Bakyt = Student(
    id: 2,
    name: 'Bakyt',
    surName: "Usonov",
    age: 23,
    group: 5,
    phone: "+996505327469",
    marriage: 'single',
    email: "Bakyt.usonov@gmail.com",
    gender: 'male');

final Zamira = Student(
    id: 3,
    name: 'Zamira',
    surName: "Nurdinova",
    age: 23,
    group: 5,
    phone: "+996772356987",
    marriage: 'married',
    email: "z.nurdinova@gmail.com",
    gender: 'female');

final Turat = Student(
    id: 4,
    name: 'Turat',
    surName: "Kaparov",
    age: 20,
    group: 5,
    phone: "+996705328569",
    marriage: 'married',
    email: "turat.kaparov@gmail.com",
    gender: 'male');

final Ainura = Student(
    id: 5,
    name: 'Ainura',
    surName: "Alimova",
    age: 25,
    group: 5,
    phone: "+996706235845",
    marriage: 'married',
    email: "Ainura.alimova@gmail.com",
    gender: 'female');

final Jypara = Student(
    id: 6,
    name: 'Turat',
    surName: "Kaparov",
    age: 24,
    group: 5,
    phone: "+996705328569",
    marriage: 'married',
    email: "turat.kaparov@gmail.com",
    gender: 'female');

final Sergei = Student(
    id: 7,
    name: 'Sergei',
    surName: "Ivanov",
    age: 22,
    group: 5,
    phone: "+996773526585",
    marriage: 'single',
    email: "s.ivanov@gmail.com",
    gender: 'male');

final Gulaiym = Student(
    id: 8,
    name: 'Gulaiym',
    surName: "Aidarova",
    age: 20,
    group: 5,
    phone: "+996555328569",
    marriage: 'single',
    email: "g.aidarova@gmail.com",
    gender: 'female');

final Jibek = Student(
    id: 9,
    name: 'Jibek',
    surName: "Akmatova",
    age: 21,
    group: 5,
    phone: "+996503658594",
    marriage: 'single',
    email: "j.akmatova@gmail.com",
    gender: 'female');

final Aikyn = Student(
    id: 10,
    name: 'Aykyn',
    surName: "Alimov",
    age: 23,
    group: 5,
    phone: "+996708023654",
    marriage: 'single',
    email: "a.Alimov@gmail.com",
    gender: 'male');

List studentter = <Student>[
  Aybek,
  Aikyn,
  Ainura,
  Bakyt,
  Sergei,
  Jibek,
  Jypara,
  Gulaiym,
  Turat,
  Zamira
];
