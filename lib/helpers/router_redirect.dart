import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';
import 'package:flutter_property_rental_ui/presentation/screens/details/details_screen.dart';


class Redirect{
  
  static redirect(BuildContext context, Property property) async {
    await Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation){
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero
            ).animate(animation),
            child: DetailsScreen(property: property));
        })
    );
}

}