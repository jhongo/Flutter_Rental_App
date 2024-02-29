import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/datasource/nearby_datasource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListNearby extends StatelessWidget {
  const ListNearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: nearby.length,
          itemBuilder:(context, index) {
            final nearbyItem = nearby[index];
            return  Padding(
              padding:const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: SizedBox(
                width: 270,
                // height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(0, 2)
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Image.asset(nearbyItem.image),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(nearbyItem.name, style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),),
                          Text('\$ ${nearbyItem.price}', style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){}, 
                        icon: const FaIcon(FontAwesomeIcons.heart, color: Colors.black54, size: 20)
                        )
                    ],
                  ),
                ),
              ),
            );
          })
      ),
    );
  }
}