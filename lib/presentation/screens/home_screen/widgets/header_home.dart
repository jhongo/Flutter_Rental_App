import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderHome extends StatelessWidget {
   
  const HeaderHome({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          child: Row(
            children: [
              FaIcon(FontAwesomeIcons.barsStaggered, size: 25,),
              Spacer(),
              FaIcon(FontAwesomeIcons.bell, size: 33,),
              SizedBox(width: 10),
              Avatar()
      
            ],
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 47,
        height: 47,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const FadeInImage(
            placeholder: AssetImage('assets/gifs/load.gif'), 
            image: NetworkImage('https://scontent.fcue15-1.fna.fbcdn.net/v/t1.6435-9/65526895_10156713539013026_1390915714176516096_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=7f8c78&_nc_eui2=AeE5c102emPclg5CC-m5g8ZVdVkv5BN1iOZ1WS_kE3WI5mXLCcg_dIFtTyx0PGYQed6hX-4jFo_4WQmonjVW1BNt&_nc_ohc=YJ55dtfeKt4AX8ZOjJD&_nc_oc=AQkuesu-nxY47nwj6WGoYA54XZJkram_d8qGo8C0E3lfzdse88gjCZsW5DoRmeYZXck&_nc_ht=scontent.fcue15-1.fna&oh=00_AfApLuxy_IxvjnwIyYLwk7Em8_1wVjkrTVO5KepcNFRkmw&oe=65FF73A6')
            )
        )
      ),
    );
  }
}