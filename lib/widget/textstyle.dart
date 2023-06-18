import 'package:flutter/material.dart';
import 'package:nova/utils/size_cofig.dart';

class textstyle extends StatelessWidget {

  @override
  final String text;
  textstyle({
    required this.text,
    this.fontSize = 22,
    this.fontWeight = FontWeight.normal,
    required this.color

  });

  final double fontSize;
  final FontWeight fontWeight ;
  final Color color ;

  Widget build(BuildContext context) {
    return     Text(

      text,
      style: TextStyle(

      fontSize: SizeConfig.scaleTextFont(fontSize) ,

      fontWeight:fontWeight,

      color: color  ,



    ),);
  }
}
