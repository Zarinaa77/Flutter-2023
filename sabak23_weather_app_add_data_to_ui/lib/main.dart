import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak23_weather_app_add_data_to_ui/constants/api_const.dart';
import 'package:sabak23_weather_app_add_data_to_ui/constants/app.text_style.dart';
import 'package:sabak23_weather_app_add_data_to_ui/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

const List cities = <String>[
  'Bishkek',
  'Osh',
  'Jalal-Abad',
  'Karakol',
  'Naryn',
  'Talas',
  'Batken',
  'Tokmok'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;
  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      final response = await dio.get(ApiConst.address());
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      final response = await dio.get(ApiConst.address());
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    }
  }

  //Dio деген плагинди колдонобуз
  //await Future.delayed(const Duration(seconds: 4));
  //await кутуп турат // 200 в программировании успешный запрос
  //Келген датаны моделдештирууну баштайбыз //id responsтун weather дин нолунчу индексиндеги id ни
  ////////////////////////////////////////
  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();
    final response = await dio.get(ApiConst.weatherData(url ?? 'bishkek'));
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Weather App')),
        ),
        // body:  Center(child: res== null? CircularProgressIndicator():Text('$res'),),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: weather==null?const CircularProgressIndicator()
          : 
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/fon.jpg'),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () async {
                            await getLocation();
                            print('>>>>>>>>${getLocation()}');
                          },
                          icon: const Icon(Icons.near_me,
                              color: Colors.white, size: 40)),
                      IconButton(
                          onPressed: () async{
                            showBottom();
                          },
                          icon: const Icon(Icons.location_city,
                              color: Colors.white, size: 40)),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      '${(weather!.temp - 275.15).toInt()}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.w500),
                    ),
                    Image.network(
                      ApiConst.getIcon(weather!.icon, 4),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerRight,
                  child: FittedBox(
                    child: Text(
                      weather!.description.replaceAll(' ', '\n'),
                      style: const TextStyle(color: Colors.white, fontSize: 70),
                    ),
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        weather!.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 80),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
  void showBottom()async{
showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,),
                child: ListView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context,index){
                    final city=cities[index];
                  return Card (child: ListTile(
                    onTap: ()async{
                      setState(() {
                        weather=null;
                      });
                     await fetchData(city);
                     Navigator.pop(context);
                    },
                    title:Text('$city',style: AppTextStyle.showTextStyle
                    ),
                    ),
                );
                  }));
            },
          );
  }
}
