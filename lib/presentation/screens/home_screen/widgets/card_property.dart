import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';

class CardProperty extends StatelessWidget {

  final Property property;
  const CardProperty({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: 170,
        child: DecoratedBox(decoration: BoxDecoration(color: Colors.indigo),
        child: Column(
          children: [
            Text(property.name),
            Text(property.category.toString() ),
            Text(property.price.toString())
          ],
        ),
        ),
      ),
    );
  }
}