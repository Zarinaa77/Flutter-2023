import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';
import 'package:sabak30_capitals_ui_1/model/continents.dart';
import 'package:sabak30_capitals_ui_1/model/suroo_joop.dart';
import 'package:sabak30_capitals_ui_1/view/test_view.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => __HomeViewState();
}
class __HomeViewState extends State<HomeView> {
List <Continents> continents = continentsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Мамлекеттер борбору',
        style: TextStyle(color: continents[3].colors),),
      actions: [
        IconButton(
          onPressed: (){}, 
      icon: const Icon(
        Icons.settings,
        color:AppColors.blue
        ),
      ),
      IconButton(
        onPressed: (){},
         icon: const Icon(Icons.more_vert,
         color: AppColors.black,
         ),
         )
      ],
      elevation: 0,
      ),
      body:  Column(
        children: [
        const Divider(
          indent: 15,
          endIndent: 15,
          color: AppColors.dividerColor,
          height: 1,
        ),
        //GridView/////////////////////////////////////////////////
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,top: 25, right: 10),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: continents.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                   // focusColor: Colors.grey,
                    onTap: () {
                     Navigator.push(
                      context, 
                     MaterialPageRoute(
                      builder: (context)=>
                      TestView(suroo:surooJoopList,),
                     ),
                     ); 
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children:[
                           Text(
                      continents[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: continents[index].colors
                       ),
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          'assets/continents/${continents[index].image}.svg',
                          width:60,
                          height: 30,
                          color: continents[index].colors,
                          ),
                      ),
                        ]
                      ),
                    ),
                  );
                }
              ),
            ),
          ),
        ]
      ),
    );
  }
}