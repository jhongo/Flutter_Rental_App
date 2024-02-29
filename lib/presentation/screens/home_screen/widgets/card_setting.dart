import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';

class CardSetting extends StatelessWidget {

  final Widget child;
  final Property property;
  const CardSetting(this.child, this.property,);

  @override
  Widget build(BuildContext context) {
    return Hero(  
      tag: 'property-card', 
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/details', arguments: property);
        },
        child: child,
      ),
      
      );
  }
}