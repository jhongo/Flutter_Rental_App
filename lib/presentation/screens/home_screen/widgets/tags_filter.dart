import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/helpers/enums.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class TagFilter extends ConsumerWidget {

  final HouseType name;
  final Function onTap;
  const TagFilter({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterSelect = ref.watch(stateItemFilter);
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
        width: 85,
        height: 45,
        child: DecoratedBox(
          decoration:BoxDecoration(
            color: filterSelect == name ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),]
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${name.toString().split('.').last}',
                style: TextStyle(
                  color: filterSelect == name ? Colors.white : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
      )),
    );
  }
}