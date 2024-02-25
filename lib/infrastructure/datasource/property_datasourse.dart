import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';

const property = <Property>[

  /**
   * & House Models
   */

  Property(
    mainImage: 'assets/imgs/houses/house-temp.jpg', 
    area: 1540, 
    livingrooms: 1, 
    buildyears: 6, 
    qualitify: 4.7, 
    name: 'Modern Family Home', 
    address: 'Green Street, New York', 
    price: 13.000, 
    bedrooms: 3, 
    bathrooms: 2, 
    photos: [
      'assets/imgs/houses/house-bathdroom_one.jpg', 
      'assets/imgs/houses/house-cook.jpg', 
      'assets/imgs/houses/house-posters.jpg'
    ], 
    category: [HouseType.House],
    model: 'Modern Two'
    ),

  Property(
    mainImage: 'assets/imgs/houses/house-marco.jpg', 
    area: 1600, 
    livingrooms: 2, 
    buildyears: 7, 
    qualitify: 4.4, 
    name: 'Marco House', 
    address: 'Fifth Avenue, New York', 
    price: 5.000, 
    bedrooms: 2, 
    bathrooms: 1, 
    photos: [
      'assets/imgs/houses/house-cook.jpg', 
      'assets/imgs/houses/house-modern.jpg', 
      'assets/imgs/houses/house-bathdroom_two.jpg'
    ], 
    model: 'Modern Two',
    category: [HouseType.House, HouseType.Popular ]),

  Property(
    mainImage: 'assets/imgs/houses/house-modern.jpg', 
    area: 1600, 
    livingrooms: 2, 
    buildyears: 7, 
    qualitify: 4.4, 
    name: 'Marco House', 
    address: 'Philadephia, New York',

    price: 5.000, 
    bedrooms: 2, 
    bathrooms: 1, 
    photos: [
      'assets/imgs/houses/house-exterior.jpg', 
      'assets/imgs/houses/house-bathdroom_one.jpg', 
      'assets/imgs/houses/house-posters.jpg'
    ], 
    model: 'Modern Two',
    category: [HouseType.House ]),

    /**
     * & Office Models
     */

    Property(
      mainImage: 'assets/imgs/offices/office-name-busness.jpg', 
      area: 2100, 
      livingrooms: 5, 
      buildyears: 10, 
      qualitify: 5.0, 
      name: 'Office Modern Business', 
      address: 'New Jersey, New York', 
      price: 15.000, 
      bedrooms: 4, 
      bathrooms: 5, 
      photos: [
        'assets/imgs/offices/office-bano.jpg', 
        'assets/imgs/offices/office-conference.jpg', 
      ], 
    model: 'Modern Family',
      category: [HouseType.Office, HouseType.Popular]),

    Property(
      mainImage: 'assets/imgs/offices/office-name-inter.jpg', 
      area: 1900, 
      livingrooms: 7, 
      buildyears: 5, 
      qualitify: 4.8, 
      name: 'Space Office', 
      address: 'San Francisco, New York', 
      price: 20.000, 
      bedrooms: 6, 
      bathrooms: 10, 
      photos: [
        'assets/imgs/offices/office-sala.jpg', 
        'assets/imgs/offices/office-boss.jpg', 
        'assets/imgs/offices/ofiice-ext.jpg', 
      ], 
      model: 'Model City',
      category: [HouseType.Office, HouseType.Popular]),

    Property(
      mainImage: 'assets/imgs/offices/office-name-teamwork.jpg', 
      area: 2300, 
      livingrooms: 4, 
      buildyears: 3, 
      qualitify: 4.9, 
      name: 'Teamwork Office', 
      address: 'San Lorenzo, Atlanta', 
      price: 16.000, 
      bedrooms: 7, 
      bathrooms: 6, 
      photos: [
        'assets/imgs/offices/office-space-work.jpg', 
        'assets/imgs/offices/office-people.jpg', 
        'assets/imgs/offices/office-bano.jpg', 
      ], 
      model: 'Model Family',
      category: [HouseType.Office]),

    /***
     * & Penthouse Models
     */

    Property(
      mainImage: 'assets/imgs/penthouse/penthouse-name-one.jpg', 
      area: 3000, 
      livingrooms: 2, 
      buildyears: 5, 
      qualitify: 4.6, 
      name: 'Dream Penthouse', 
      address: 'Lazer Street, New York', 
      price: 23.000, 
      bedrooms: 3, 
      bathrooms: 2, 
      photos: [
        'assets/imgs/penthouse/pnthouse-comple_two.jpg',
        'assets/imgs/penthouse/penthouse-comple.jpg',
      ], 
      model: 'Model Style',
      category: [HouseType.Penthouse] ),
    Property(
      mainImage: 'assets/imgs/penthouse/penthouse-name-two.jpg', 
      area: 3200, 
      livingrooms: 4, 
      buildyears: 6, 
      qualitify: 4.7, 
      name: 'Penthouse Modern', 
      address: 'Beverly Hills, New York', 
      price: 30.000, 
      bedrooms: 4, 
      bathrooms: 3, 
      photos: [
        'assets/imgs/penthouse/penthouse-comple_four.jpg',
        'assets/imgs/penthouse/pnthouse-comple_two.jpg',
      ], 
      model: 'Model Vergel',
      category: [HouseType.Penthouse, HouseType.Popular] ),

    Property(
      mainImage: 'assets/imgs/penthouse/penthouse-name-three.jpg', 
      area: 3700, 
      livingrooms: 3, 
      buildyears: 3, 
      qualitify: 4.8, 
      name: 'Penthouse Luxury', 
      address: 'Osas, New York', 
      price: 28.000, 
      bedrooms: 6, 
      bathrooms: 3, 
      photos: [
        'assets/imgs/penthouse/penthouse-name-four.jpg',
        'assets/imgs/penthouse/penthouse-comple_three.jpg',
      ], 
      model: 'Model Two',
      category: [HouseType.Penthouse, HouseType.Popular] ),


];

final Map<HouseType, List<Property>> propertyByCategory = {
  HouseType.House: property.where((property) => property.category.contains(HouseType.House)).toList(),
  HouseType.Office: property.where((property) => property.category.contains(HouseType.Office)).toList(),
  HouseType.Penthouse: property.where((property) => property.category.contains(HouseType.Penthouse)).toList(),
  HouseType.Popular: property.where((property) => property.category.contains(HouseType.Popular)).toList(),
};