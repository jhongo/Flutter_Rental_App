import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/widgets/custom_navbar.dart';

class MainScreen extends StatelessWidget {
  // const MainScreen({super.key});

  List<Widget> screens= [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: screens,
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}