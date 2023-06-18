import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova/Screen/OnboardingScreen/on_boarding_indictor.dart';
import 'package:nova/Screen/OnboardingScreen/onboardingcont.dart';
import 'package:nova/widget/textstyle.dart';
import 'package:nova/utils/size_cofig.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  late PageController _pageController;
  int _currentoage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController  = PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController  = PageController();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        alignment: AlignmentDirectional.center,
        children: [
          PageView(
onPageChanged: (int currentoage){
  setState(() {
    _currentoage = currentoage;
  });
},
            controller: _pageController,
            children: [


                    onboardingcont(images: "OnboardingScreen1", title: "Discover a New For You",
                        subtitle: "Lots of new products here and decide \n         which product is best for you"

                      ,onPressed: (){
                      _pageController.nextPage(duration: Duration(seconds:1), curve: Curves.easeOut);
                      }, buttitle: 'Next',
                    ),
                    onboardingcont(images: "OnboardingScreen2", title: "Find Your Best Product",
                        subtitle: "Famous and quality product at \n        affordable prices"
,     onPressed: (){
    _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeOut);
    }, buttitle: 'Next',

                    ),
                    onboardingcont(images: "OnboardingScreen3", title: "Express Product Delivery",
                        subtitle: "Your product will be delivered to your \n      home safetly and securely"
                      ,onPressed: (){
Navigator.pushReplacementNamed(context,  '/loginscreen');
                      }, buttitle: 'Start Your Journey',


                    ),

            ],
                ),
SizedBox(
  height: SizeConfig.scaleHeight(50),
),
          Positioned(
            top: SizeConfig.scaleHeight(600),
            left: SizeConfig.scaleWidth(150),


            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                on_boarding_indictor(selected: _currentoage==0),
                on_boarding_indictor(selected:  _currentoage==1),
                on_boarding_indictor(selected:  _currentoage==2),
              ],
            ),
          )


        ],
      ),



    );
  }
}


