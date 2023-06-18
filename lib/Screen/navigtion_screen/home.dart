import 'package:flutter/material.dart';
import 'package:nova/utils/app_colors.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova/utils/size_cofig.dart';
class screenone extends StatefulWidget {
  const screenone({Key? key}) : super(key: key);

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(

        child: Padding(
          padding: const EdgeInsets.only(top: 75,left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(

                children: [

                  Image.asset("images/Profile.png",height: SizeConfig.scaleHeight(55),width:  SizeConfig.scaleWidth(55),),
                  SizedBox(
                    width:  SizeConfig.scaleWidth(15),
                  ),
                  textstyle(text: "Rizale Greyrat", color: Colors.black)
                ],
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(15),
              ),
              TextButton(onPressed: (){}, child: textstyle(text: "Home", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),
              TextButton(onPressed: (){}, child: textstyle(text: "My Wallet", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "Category", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "My Likes", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(80),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "Contact Us", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "About", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "Help", color: Colors.black,fontSize: 14,)),
              SizedBox(
                height: SizeConfig.scaleHeight(15),         ),

              TextButton(onPressed: (){}, child: textstyle(text: "Logout", color: Colors.black,fontSize: 14,))
            ],
          ),
        ),

      ),


      appBar:  AppBar(
        centerTitle: true,

        elevation: 0,
        backgroundColor: Colors.white10,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset("images/mune.png"),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(35),
          child: Container(
            //           alignment: AlignmentDirectional.center,
            width:  SizeConfig.scaleWidth(134),
            height: SizeConfig.scaleHeight(40),               decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(15)
          ),
            child: Text("👋 Hello,",style: TextStyle(fontSize: 16,
              color: Appcolor.Gry_color,
            ),textAlign: TextAlign.center,),
          ),
        ),
        actions: [

          IconButton(onPressed: (){},

              icon: SvgPicture.asset("images/Notification.svg",
                height: SizeConfig.scaleHeight(30),
                width: 30,


              ))
        ],
      ),


      body:
      Padding(
        padding:  EdgeInsets.only(

          top: SizeConfig.scaleHeight(30),
          left:  SizeConfig.scaleWidth(25),
          right:  SizeConfig.scaleWidth(25),

        ),
        child: Column(
          children: [
            Container(
              //   margin: EdgeInsets.only(right: 25,left: 25 ),
              child: TextField(
                obscureText: true,

                keyboardType: TextInputType.visiblePassword,

                decoration: InputDecoration(
                  fillColor: Color(0xffF5F5F5),

                  filled: true,
                  hintText: "Search product",
                  hintStyle: TextStyle(
                      color:Color(0x993e3e3e),
                      fontSize: 14
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.white,



                    ),


                  ),
                  prefixIcon: Icon(Icons.search    ,                  color:Color(
                      0x993e3e3e),size: 19
                    ,),
                ),

              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textstyle(text: "Category", color: Colors.black),
                TextButton(onPressed: (){}, child:
                textstyle(text: "See More",             color: Appcolor.Gry_color,
                  fontSize: 14,
                )
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(

                        child: Image.asset("images/category1.png"),
                      ),
                      Padding(
                        padding:  EdgeInsetsDirectional.only(
                            top: SizeConfig.scaleHeight(29),
                            start: SizeConfig.scaleWidth(20)
                        ),
                        child: Text("Furniture", style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,

                        ),
                          textAlign: TextAlign.center,

                        ),
                      )

                    ],
                  ),
                  SizedBox(
                    //     height: SizeConfig.scaleHeight(20),
                    width: SizeConfig.scaleWidth(20),
                  ),
                  Stack(
                    children: [
                      Container(

                        child: Image.asset("images/category2.png"),
                      ),

                      Padding(
                        padding:  EdgeInsetsDirectional.only(
                            top: SizeConfig.scaleHeight(29),
                            start: SizeConfig.scaleWidth(20)
                        ),
                        child: Text("Fashion", style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,

                        ),
                          textAlign: TextAlign.center,

                        ),
                      )



                    ],
                  )

                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.scaleHeight(30),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textstyle(text: "Recomended For You", color: Colors.black),
                TextButton(onPressed: (){}, child:
                textstyle(text: "See More",             color: Appcolor.Gry_color,
                  fontSize: 14,
                )
                )
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.scaleHeight(180),
                          width:SizeConfig.scaleWidth(152) ,
                          decoration: BoxDecoration(
                              color: Color(0xffDEDEE0)
                              ,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/nike.png"),
                        ),

                        Container(
                          margin: EdgeInsetsDirectional.only(
                            top:   SizeConfig.scaleHeight(10),
                            end: SizeConfig.scaleWidth(10),
                            start:  SizeConfig.scaleWidth(114),

                          ),
                          height: SizeConfig.scaleHeight(28),
                          width:SizeConfig.scaleWidth(28) ,
                          decoration: BoxDecoration(
                              color: Colors.white
                              ,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/Heart.png"),
                        )
                      ],
                    ),
                    textstyle(text: "Nike Jordan 1 Retro\n Yellow", color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold,),
                    textstyle(text: " +608", color:Appcolor.orng_button, fontSize: 17,fontWeight: FontWeight.bold,),

                  ],
                ),
                SizedBox(
                  //     height: SizeConfig.scaleHeight(20),
                  width: SizeConfig.scaleWidth(20),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: SizeConfig.scaleHeight(180),
                          width:SizeConfig.scaleWidth(152) ,
                          decoration: BoxDecoration(
                              color: Color(0xffDEDEE0)
                              ,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/hode.png"),
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(
                            top:   SizeConfig.scaleHeight(10),
                            end: SizeConfig.scaleWidth(10),
                            start:  SizeConfig.scaleWidth(114),

                          ),
                          height: SizeConfig.scaleHeight(28),
                          width:SizeConfig.scaleWidth(28) ,
                          decoration: BoxDecoration(
                              color: Colors.white
                              ,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Image.asset("images/Heart.png"),
                        )

                      ],
                    ),
                    textstyle(text: "Jacket Pullover Sweat \n Hoodie", color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold,),
                    textstyle(text: " 28", color:Appcolor.orng_button, fontSize: 17,fontWeight: FontWeight.bold,),

                  ],
                ),

              ],
            )

          ],
        ),
      )
      ,

    );
  }
}
