import 'package:flutter/material.dart';

class ImagenMain extends StatelessWidget {

  final String urlImage;
  final double price;
  const ImagenMain({super.key, required this.urlImage, required this.price});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset(urlImage, fit: BoxFit.cover,)
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [0.5, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.5)
                      ]
                    )
                  ),
                )
              ),
              IconButton(onPressed:(){
                Navigator.pop(context);
              }, 
              icon:Icon(Icons.arrow_back_ios, color: Colors.white,)),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Rent', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                        Text('\$ ${price.toStringAsPrecision(5)} /Moth ', style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(60, 60)),
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      onPressed:(){} , 
                      icon: const Icon(Icons.favorite_outline, color: Colors.white,),
                      )
                  ],
                ),
              )

            ],
          )
        ),
      ),
    );
  }
}