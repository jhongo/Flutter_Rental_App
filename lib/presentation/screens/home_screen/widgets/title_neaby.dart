import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          child: Text('Property Nearby', style: TextStyle( fontSize: 22, fontWeight: FontWeight.bold ), ),
        ),
      ),
    );
  }
}