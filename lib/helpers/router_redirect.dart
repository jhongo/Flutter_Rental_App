import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';
import 'package:flutter_property_rental_ui/presentation/details/details_screen.dart';


class Redirect{
  
  static redirect(BuildContext context, Property property) async {
    await Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation){
          return DetailsScreen(property: property);
        })
    );
}

}