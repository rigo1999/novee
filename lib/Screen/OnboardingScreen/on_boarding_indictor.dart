import'package:flutter/material.dart';

class on_boarding_indictor extends StatelessWidget {

  @override
  final bool selected;

  on_boarding_indictor({
    required this.selected
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),

      height: selected? 10.5:10.4,
      width:   !selected? 10 :28,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        color: selected? Color(0xffFF7750):Color(0XFFCACACA),
borderRadius:!selected?BorderRadius.circular(10) :BorderRadius.circular(10)

      ),

    );
  }
}
