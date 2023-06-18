import 'package:nova/Screen/OnboardingScreen/on_boarding_indictor.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:nova/utils/size_cofig.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboardingcont extends StatelessWidget {

  @override


  final String images;

  onboardingcont({

    required this.images,
  required this.title,
  required this.subtitle,
  required this.buttitle,
  required this.onPressed,

  });
  final String buttitle;
final Function() onPressed;
  final String title;
  final String subtitle;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //SvgPicture.asset("images/$images.svg",),
        Image(image: AssetImage('images/$images.png')),
        Column(

          children: [
            textstyle(text:title,
                color: Color(0Xff3E3E3E),
                fontWeight: FontWeight.bold),
            SizedBox(
              height: SizeConfig.scaleHeight(25),
            ),
            textstyle(text: subtitle,
              color: Colors.black26,


              fontSize: 16,),

          ],

        ),

        Spacer(),
        Container(
          height:SizeConfig.scaleHeight(63.83,),
          width: double.infinity,

          margin: EdgeInsets.only(
              left: SizeConfig.scaleWidth(25),
              right: SizeConfig.scaleWidth(25),



          ),
          child: ElevatedButton(
            style:  ElevatedButton.styleFrom(
                backgroundColor: Color(0XFFFF7750)
                ,shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            )
            ),
            onPressed: onPressed,  child:   textstyle(text:buttitle,
            color: Colors.white,
            fontSize: 16,
          ),),
        )
        ,        Spacer(),

      ],
    );
  }
}
