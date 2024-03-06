import 'dart:ffi';

import 'package:flutter/material.dart';


class TitleProperty extends StatelessWidget {

  final String name;
  final String location;
  final double qualitify;
  
  const TitleProperty({super.key, required this.name, required this.location, required this.qualitify});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle( fontSize: 22, fontWeight: FontWeight.bold ), ),
              RichText(
                text: TextSpan(
                  children: [
                    const WidgetSpan(child: Icon(Icons.location_on_outlined, size: 20,color: Colors.black54 )),
                    TextSpan(text: location, style: const TextStyle(fontSize: 14, color: Colors.black54)),
                  ])),
            ]),
            const Spacer(),
            Chip(
              backgroundColor: Colors.yellow[100],
              label:Text('$qualitify', style: const TextStyle(fontWeight: FontWeight.bold),), 
              avatar: const Icon(Icons.star, color: Colors.yellow,),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),

              )
        ],
      )
    );
  }
}