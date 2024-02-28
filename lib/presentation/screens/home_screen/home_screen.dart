import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/body_home.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/header_home.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/list_nearby.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/search_and_title.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/title_neaby.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderHome(),
          SizedBox(height: 25),
          SearchAndTitle(),
          SizedBox(height: 25),
          BodyHome(),
          TitleWidget(),
          ListNearby()
          // BodyHome(),
          // FooterHome(),
        ],
      )
    );
  }
}