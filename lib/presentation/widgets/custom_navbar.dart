import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/datasource/tabs_datasource.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          width: size.width,
          height: size.height * 0.08,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(tabs.length, (index){
                final itemTab = tabs[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: size.width * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                    Expanded(child: Icon(itemTab.icon, size:35, color: Colors.white)),
                   
                  ],
                );
              }
              
              ) 
              )
            ),
        ),
      ),
    );
  }
}