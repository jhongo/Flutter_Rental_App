import 'package:flutter_property_rental_ui/helpers/enums.dart';

class Property {

  final String name;
  final String mainImage;
  final String address;
  final double price;
  final int area;
  final int bedrooms;
  final int cars;
  final int bathrooms;
  final int livingrooms;
  final int buildyears;
  final double qualitify;
  final List<String> photos;
  final List<HouseType> category;
  final String model;

  const Property( {
    required this.mainImage, 
    required this.area, 
    required this.livingrooms, 
    required this.buildyears,
    required this.qualitify,
    required this.name,
    required this.address,
    required this.price,
    required this.bedrooms,
    required this.cars,
    required this.bathrooms,
    required this.photos,
    required this.category,
    required this.model,
  });
  
}