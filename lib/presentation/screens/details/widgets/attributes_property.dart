import 'package:flutter/material.dart';


class AttributesProperty extends StatelessWidget {

  final int bedrooms;
  final int bathrooms;
  final int area;
  final int builtInYear;
  final int livingRoom;
  final int parking;

  const AttributesProperty({super.key, required this.bedrooms, required this.bathrooms, required this.area, required this.builtInYear, required this.livingRoom, required this.parking});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.22,
      child: DecoratedBox(
        decoration:const BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Attributes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            child: Table(
              children: [
                 TableRow(
                  children: [
                    _ItemAttributre(icon: Icons.bed_outlined, title: 'Bedrooms', count: bedrooms, ),
                    _ItemAttributre(icon: Icons.bathtub_rounded, title: 'Bathrooms', count: bathrooms, ),
                    _ItemAttributre(icon: Icons.area_chart_outlined, title: 'Area (sqft)', count: area, ),
                  ]
                ),
                 TableRow(
                  children: [
                    _ItemAttributre(icon: Icons.date_range, title: 'Built in year', count: builtInYear, ),
                    _ItemAttributre(icon: Icons.living_outlined, title: 'Living Room', count: livingRoom, ),
                    _ItemAttributre(icon: Icons.local_parking, title: 'Parking(indoor)', count: parking, ),
                  ]
                ),
                
              ],
            )
          )
        ],
      ),
        
        )
    );
  }
}

class _ItemAttributre extends StatelessWidget {
  final IconData icon;
  final int count;
  final String title;
  const _ItemAttributre({
    super.key, required this.icon, required this.count, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
          children: [
            Icon(icon, color: Colors.black38),
            const SizedBox(width: 5,),
            Text('$count', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),)
          ],
        ),
        Text(title, style: TextStyle(color: Colors.black38),)
          ],
        ),
      )
    );
  }
}