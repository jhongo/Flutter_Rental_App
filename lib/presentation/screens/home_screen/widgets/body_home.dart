import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_property_rental_ui/infrastructure/datasource/property_datasourse.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/card_property.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/tags_filter.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BodyHome extends ConsumerWidget {
   
  const BodyHome({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(HouseType.values.length , (index){
              return TagFilter(
                name: HouseType.values[index],
                onTap: () => ref.read(stateItemFilter.notifier).state = HouseType.values[index]
                // houseType: HouseType.values[index],
              );})),
          const SizedBox(height: 30),
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: propertyByCategory[ref.watch(stateItemFilter) ]!.length,
              itemBuilder:(context, index) {
                return CardProperty(
                  property: propertyByCategory[ref.watch(stateItemFilter) ]![index]
                );
              },
              ),
          )

        ],
      ));
  }
}