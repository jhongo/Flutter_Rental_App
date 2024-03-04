import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/widgets/imagen_main.dart';

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
              )
            ],
          ),
        ),
      )
    );
  }
}