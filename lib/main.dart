import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/presentation/screens/main_screen/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Rental UI',
      home: MainScreen(),
      theme: ThemeData(
        useMaterial3: true,
      )
    );
  }
}