import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova/Screen/OnboardingScreen/OnboardingScreen.dart';
import 'package:nova/utils/size_cofig.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
bool _isvisible = false;
  void animateIcon() {
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        _isvisible =!_isvisible;
      });
    });

  }

  void initState() {
    // TODO: implement initState
    autonavigte();
    animateIcon();
    super.initState();

  }
  void autonavigte() {
    Future.delayed(Duration(seconds: 7),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen(),));
    });







  }
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(

      body:Center(
        child: AnimatedOpacity(opacity: _isvisible ? 1:0,
            curve: Curves.easeIn,



            duration: Duration(
              seconds: 1

            ),
        child: SvgPicture.asset("images/SplashScreen.svg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,

        ) ,
        ),

      )
      ,
    );
  }
}

