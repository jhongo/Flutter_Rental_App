import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/screens/screens.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_property_rental_ui/presentation/widgets/custom_navbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  // const MainScreen({super.key});

  final screens = <Widget>[
    HomeScreen()
  ];


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final opcSelect = ref.watch(stateItemNav);
    return Scaffold(
      body: IndexedStack(
        index: opcSelect,
        children: screens
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}