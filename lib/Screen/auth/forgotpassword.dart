import 'package:flutter/material.dart';
import 'package:nova/widget/textstyle.dart';
class forgotpassword extends StatefulWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 25 ,top: 75),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){

              Navigator.pushReplacementNamed(context,    '/loginscreen');
            }, icon: Icon(Icons.arrow_back)



            ),
            SizedBox(
              height: 30,
            ),
            textstyle(text: "Forgot Password", color: Colors.black,fontSize: 22, fontWeight: FontWeight.bold,),
            SizedBox(
              height: 5,
            ),

            textstyle(text: " Don’t worry, Nova have simple step to create \n your new password  ",

 color:Color(0x3d3e3e3e),fontSize: 16,


             ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 25, ),
              child: TextField(
                keyboardType: TextInputType.  emailAddress,

                decoration: InputDecoration(
                  fillColor: Colors.white,

                  filled: true,
                  // hintText: "Email address",
                  // hintStyle: TextStyle(
                  //     color: Colors.grey.shade500
                  // ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,



                      )

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            Spacer(),
            Container(
                width: double.infinity,
                height: 63.83,
                margin: EdgeInsets.only(right: 25,left: 25),
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xffFF7750),
                        shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                    ) ,

                    onPressed: (){

                      Navigator.pushReplacementNamed(context,  '/homescreen');


                    }, child: textstyle(text: "Confirm", color: Colors.white,fontSize: 16,))),
            SizedBox(
              height: 50,
            ),


          ],

        ),
      ),



    );
  }
}
