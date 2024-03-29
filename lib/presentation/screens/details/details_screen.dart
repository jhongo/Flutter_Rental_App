import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/widgets/attributes_property.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/widgets/imagen_main.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/widgets/list_images.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/widgets/title_property.dart';

class DetailsScreen extends StatelessWidget {

  final Property property;
   
  const DetailsScreen({Key? key, required this.property}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Column(
            children: [
              ImagenMain(
                urlImage: property.mainImage,
                price: property.price,
              ),
              TitleProperty(
                name: property.model,
                location: property.address,
                qualitify: property.qualitify
              ),
              ListImages(images: property.photos),
              AttributesProperty(
                area: property.area,
                bedrooms: property.bedrooms,
                bathrooms: property.bathrooms,
                builtInYear: property.buildyears,
                livingRoom: property.livingrooms,
                parking: property.cars,
              )
            ],
          ),
        ),
      )
    );
  }
}