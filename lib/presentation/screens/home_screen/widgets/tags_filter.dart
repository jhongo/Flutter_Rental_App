import 'package:flutter/material.dart';


class TagFilter extends StatelessWidget {
  const TagFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 30,
      child: DecoratedBox(
        decoration:BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
    ));
  }
}