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
    category: 'House'),

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
    category: 'House'),

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
    category: 'House'),

    // Property(
    //   mainImage: mainImage, 
    //   area: area, 
    //   livingrooms: livingrooms, 
    //   buildyears: buildyears, 
    //   qualitify: qualitify, 
    //   name: name, 
    //   address: address, 
    //   price: price, 
    //   bedrooms: bedrooms, 
    //   bathrooms: bathrooms, 
    //   photos: photos, 
    //   category: category)


];