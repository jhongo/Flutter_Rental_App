import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const SizedBox(
          child: Text('Property Nearby', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold ), ),
        ),
      ),
    );
  }
}