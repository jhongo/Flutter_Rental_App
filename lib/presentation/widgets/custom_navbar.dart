import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/datasource/tabs_datasource.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CustomNavBar extends ConsumerWidget  {
  // const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final stateItem = ref.watch(stateItemNav);
 
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
                return GestureDetector(
                  onTap: (){
                    ref.read(stateItemNav.notifier).state = itemTab.index;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (stateItem == itemTab.index) ?
                      Container(
                        height: 5,
                        width: size.width * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        )
                      ) : Container(),
                      Expanded(child: Icon(itemTab.icon, size:(stateItem == itemTab.index) ? 30 : 27, color: (stateItem == itemTab.index) ? Colors.white : Colors.grey, )),
                     
                    ],
                  ),
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