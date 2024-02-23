import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/screens/home_screen/widgets/header_home.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderHome(),
          // BodyHome(),
          // FooterHome(),
        ],
      )
    );
  }
}