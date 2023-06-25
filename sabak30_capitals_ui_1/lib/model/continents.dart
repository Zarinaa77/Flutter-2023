import 'package:flutter/material.dart';
import 'package:sabak30_capitals_ui_1/constants/app_colors.dart';
class Continents {
  const 
  Continents({required this.image, required this.colors, 
    required this.name,});

    final String name;
    final String image;
    final Color colors;
}


const Continents asia = Continents(name: 'Asia', image: 'asia', colors: AppColors.asiaColor);
const Continents africa = Continents(name: 'Africa', image: 'africa', colors: AppColors.africaColor);
const Continents northAmerica = Continents(name: 'North America', image: 'northAmerica', colors: AppColors.northAmericaColor);
const Continents southAmerica = Continents(name: 'South America', image: 'southAmerica',colors: AppColors.southAmericaColor);
const Continents australia = Continents(name: 'Australia', image: 'australia',colors: AppColors.australiaColor);
const Continents europe = Continents(name: 'europe', image: 'europe',colors: AppColors.europeColor);

List <Continents> continentsList =[
  asia,
  africa,
  northAmerica,
  southAmerica,
  australia,
  europe,
];
