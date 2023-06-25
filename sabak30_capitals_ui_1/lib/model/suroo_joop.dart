class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<Joop> jooptor;
}

// ignore: camel_case_types
class Joop {
  const Joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;}

  Suroo s1 = const Suroo(
    text:'Paris',
    image: 'Paris',
    jooptor: [
      Joop(text: 'Germany', isBool: false),
      Joop(text: 'Finland', isBool: false),
      Joop(text: 'France', isBool: true),
      Joop(text: 'Italy', isBool: false),
    ],
  );

   Suroo s2 = const Suroo(
    text:'Bern',
    image: 'BernSwitzerland',
    jooptor: [
      Joop(text: 'Russia', isBool: false),
      Joop(text: 'Switzerland', isBool: true),
      Joop(text: 'England', isBool: false),
      Joop(text: 'Spain ', isBool: false),
    ],
  );
   Suroo s3 = const Suroo(
    text:'London',
    image: 'England',
    jooptor: [
      Joop(text: 'Ukrain', isBool: false),
      Joop(text: 'Spain', isBool: false),
      Joop(text: 'England', isBool: true),
      Joop(text: 'Italy', isBool: false),
    ],
  );
   Suroo s4 = const Suroo(
    text:'Copenhagen',
    image: 'CopenhagenDenmark',
    jooptor: [
      Joop(text: 'Denmark', isBool: true),
      Joop(text: 'Ukrain', isBool: false),
      Joop(text: 'Poland', isBool: false),
      Joop(text: 'Norway', isBool: false),
    ],
  );
   Suroo s5 = const Suroo(
    text:'Berlin',
    image: 'Berlin',
    jooptor: [
      Joop(text: 'Germany', isBool: true),
      Joop(text: 'Sweden', isBool: false),
      Joop(text: 'Greece', isBool: false),
      Joop(text: 'Turkey', isBool: false),
    ],
  );
   
   List<Suroo> surooJoopList = [
    s1,
    s2,
    s3,
    s4,
    s5];