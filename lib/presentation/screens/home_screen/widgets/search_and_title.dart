import 'package:flutter/material.dart';

class SearchAndTitle extends StatelessWidget {
  const SearchAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Discover',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
            const Text('your new house!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
                const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    elevation: 5.0,
                    shadowColor: const Color(0xffe9ecef),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune, color: Colors.white,),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(60, 60)),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
