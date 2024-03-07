import 'package:flutter/material.dart';


class ListImages extends StatelessWidget {
  final List<String> images;
  const ListImages({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 25),
            child: Row(
              children: [
                Text('Photos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Spacer(),
                Text('See all', style: TextStyle(fontSize: 16, color: Colors.blue),)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  images[index],
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            );
                  },
                ),
          )
        ],
      )
    
    );
  }
}