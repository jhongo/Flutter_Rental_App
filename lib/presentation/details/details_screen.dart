import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';

class DetailsScreen extends StatelessWidget {

  final Property property;
   
  const DetailsScreen({Key? key, required this.property}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: Text(property.name),
      ),
    );
  }
}