import 'package:flutter/material.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:nova/utils/size_cofig.dart';

class button extends StatelessWidget {

  @override
  final String buttitle;

  button({
    required this.buttitle,
    required this.onPressed});

  final Function() onPressed;

  Widget build(BuildContext context) {
    return             ElevatedButton(
      style:  ElevatedButton.styleFrom(
          backgroundColor: Color(0XFFFF7750),
          fixedSize: Size(SizeConfig.scaleWidth(50), SizeConfig.scaleHeight(63.83,),
      )
          ,shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

      )
      ),
      onPressed: onPressed,
      child: Container(
        // margin: EdgeInsets.only(left:25 ,right:25 ),
        child:   textstyle(text:buttitle,
        color: Colors.white,
        fontSize: 16,
      ),
      ),
    )
    ;
  }
}
