import 'package:flutter/material.dart';
import 'package:flutter_property_rental_ui/infrastructure/models/property.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProperty extends StatelessWidget {
  final Property property;
  const CardProperty({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          width: 250,
          child: DecoratedBox(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: Stack(
                children: [
                  BackgroundCard(property: property),
                  Positioned(right: 0, child: _ItemPrice(property: property)),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: _BodyDetailsCard(property: property),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class _BodyDetailsCard extends StatelessWidget {
  const _BodyDetailsCard({
    super.key,
    required this.property,
  });

  final Property property;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      child: DecoratedBox(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black54, Colors.transparent],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 50,
                  height: 25,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFffb703),
                          size: 16,
                        ),
                        Text(
                          property.qualitify.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  )),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          property.name,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.other_houses_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(property.model,
                                style: const TextStyle(color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.heart,
                          color: Colors.white, size: 20))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemPrice extends StatelessWidget {
  const _ItemPrice({
    super.key,
    required this.property,
  });

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
      child: SizedBox.fromSize(
        size: const Size(120, 30),
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF354f52)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '€ ${property.price.toStringAsFixed(3)}/Month',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
    required this.property,
  });

  final Property property;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        property.mainImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
