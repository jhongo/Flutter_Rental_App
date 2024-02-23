import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/tags_filter.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BodyHome extends ConsumerWidget {
   
  const BodyHome({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(HouseType.values.length , (index){
          return TagFilter(
            name: HouseType.values[index].capitalizeName(),
            onTap: () => ref.read(stateItemFilter.notifier).state = HouseType.values[index].capitalizeName()
            // houseType: HouseType.values[index],
          );})
    ));
  }
}