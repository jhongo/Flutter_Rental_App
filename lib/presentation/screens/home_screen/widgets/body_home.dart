import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/tags_filter.dart';

class BodyHome extends StatelessWidget {
   
  const BodyHome({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(HouseType.values.length , (index){
          return TagFilter(
            // houseType: HouseType.values[index],
          );})
    ));
  }
}