import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/datasource/nearby_datasource.dart';

class ListNearby extends StatelessWidget {
  const ListNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.indigo, 
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: nearby.length,
            itemBuilder:(context, index) {
              return  Padding(
                padding:const EdgeInsets.fromLTRB(20, 0, 20, 25),
                child: SizedBox(
                  width: 270,
                  // height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
      ),
    );
  }
}