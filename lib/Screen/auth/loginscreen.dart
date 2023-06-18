import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nova/utils/app_colors.dart';
import 'package:nova/utils/size_cofig.dart';
import 'package:nova/widget/textfield.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

import '../../utils/MySnackBars.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}
final auth = FirebaseAuth.instance;
String? email;
String? password;
 late TapGestureRecognizer _tapGestureRecognizer;
 late TextEditingController _emailtextEditingController;
 late TextEditingController _passwordtextEditingController;
class _loginscreenState extends State<loginscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap=navigaterto;
    _emailtextEditingController =TextEditingController();
    _passwordtextEditingController=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
    _emailtextEditingController .dispose();
    _passwordtextEditingController.dispose();
  }
  void navigaterto ()=>Navigator.pushReplacementNamed(context, '/signup');
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Colors.black54,
body: Padding(
  padding:  EdgeInsetsDirectional.only(
top: SizeConfig.scaleHeight(74),
    start: SizeConfig.scaleWidth(25),
    end:  SizeConfig.scaleWidth(25),

  ),
  child:   Form(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
IconButton(onPressed: (){

    Navigator.pushReplacementNamed(context,  '/OnboardingScreen');
}, icon: Icon(Icons.arrow_back)



),
        SizedBox(
          height: SizeConfig.scaleHeight(30),
        ),
        textstyle(text: "Hello There", color:Appcolor.Gry_color,fontSize: 16,fontWeight: FontWeight.w500,),

        textstyle(text: "Welcome Back", color: Colors.black,),
        SizedBox(
          height:SizeConfig.scaleHeight(30),
        ),

        Container(
          child: textfield(
              onChanged: (data){
                email = data;
              },            hinttext: "Email address", maxLines: 1, maxLength: 45, keyboardType: TextInputType.emailAddress,controller: _emailtextEditingController),
        ),
        SizedBox(
            height: SizeConfig.scaleHeight(20),
        ),
textfield(
      onChanged: (data){
        password = data;
      },hinttext: "Password", maxLines: 1, maxLength: 50, keyboardType: TextInputType.visiblePassword,suffixIcon: Icons.remove_red_eye_outlined,controller: _passwordtextEditingController),



        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(

                onPressed: (){

                  Navigator.pushReplacementNamed(context,   '/forgotpassword');

                }, child:Text("Forgot Password?",style: TextStyle(color: Color(0XFFFF7750),fontSize: 14,fontWeight: FontWeight.w500,),textAlign: TextAlign.right,)
            //textstyle(text: "Forgot Password?", color: Color(0XFFFF7750),fontSize: 14,fontWeight: FontWeight.w500,)

            //Text("Forgot Password?"
            ),
          ],
        ),
        Spacer(),
        Container(
width: double.infinity,
            height: 63.83,
    //        margin: EdgeInsets.only(right: 25,left: 25),
            child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.orng_button,
shape:  RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15))
)
                ) ,

      onPressed: ()async {
// print(email);
// print(password);

        try {
          var user = await auth.signInWithEmailAndPassword(
              email: email!, password: password!);
          if (user != null){
            Navigator.pushReplacementNamed(context, '/home_screen');

          }
        } catch (e) {
          ScaffoldMessenger.of(context)
          .showSnackBar(MySnackBars.warningSnackBar );

        }
      }, child: textstyle(text: "Login", color: Colors.white,fontSize: 16,))),
SizedBox(
height: SizeConfig.scaleHeight(20),
),
Center(
    child:   RichText(

      textAlign: TextAlign.center,

      text: TextSpan(

          text: "Don’t have an account? Please",style: TextStyle(

        color: Colors.black) ,children:

    [

      TextSpan(
recognizer: _tapGestureRecognizer,
          text: "Sign Up",style: TextStyle(

        color:  Appcolor.orng_button,

      )),



    ]

    ),





    ),
),

        SizedBox(
          height: SizeConfig.scaleHeight(20),
        ),
      ],

    ),
  ),
),
    );
  }
}

