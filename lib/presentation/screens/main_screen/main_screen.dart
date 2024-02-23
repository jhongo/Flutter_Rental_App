import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/services/tabs_services.dart';
import 'package:flutter_property_rental_ui/presentation/widgets/custom_navbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerWidget {
  // const MainScreen({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final opcSelect = ref.watch(stateItemNav);
    return Scaffold(
      body: IndexedStack(
        index: opcSelect,
        children:  [
    // Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    Container(color: Color(0xFF000000)),
  ]
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}