import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova/models/bn_sceern.dart';
import 'package:nova/Screen/navigtion_screen/messenger.dart';
import 'package:nova/Screen/navigtion_screen/person.dart';
import 'package:nova/Screen/navigtion_screen/screenadd.dart';
import 'package:nova/Screen/navigtion_screen/home.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:nova/Screen/navigtion_screen/screentwo.dart';





class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  String _title = 'HOME';
  int _currentIndex = 0;
  List<BottomNavigationScreen> _bn_sceern = <BottomNavigationScreen> [

    BottomNavigationScreen("home", screenone()),
    BottomNavigationScreen("", screentwo()),
    BottomNavigationScreen("", screenadd()),
    BottomNavigationScreen("", messenger()),
    BottomNavigationScreen("", person()),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _bn_sceern.elementAt(_currentIndex).widget,

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
          currentIndex: _currentIndex,
         selectedItemColor: Colors.greenAccent,
         // unselectedItemColor: Colors.black,
         unselectedItemColor: Colors.black,
         //  backgroundColor:  Colors.greenAccent,
// showSelectedLabels: false,
// showUnselectedLabels: false,

          selectedIconTheme: IconThemeData(
         color:   Colors.greenAccent,
          ),
          onTap: (int selectedindex){
            setState(() {
              _currentIndex = selectedindex;
            });
            print(selectedindex);
            switch(selectedindex){

              case 0:
                _changetitle("Home");
                break;
              case 1:
                _changetitle("notifications");
                break;
              case 2:
                _changetitle("add");
                break;
                case 3:
              _changetitle("messenger");
              break;
              case 4:
                _changetitle("person");
                break;

            }
          },



          items: [
        BottomNavigationBarItem(icon:Icon(LineAwesomeIcons.home, size: 20, color: Colors.green),label: "",),
        BottomNavigationBarItem(icon:  SvgPicture .asset("images/home.svg",),label: "",),
        BottomNavigationBarItem(icon:  Image  .asset("images/Search.png",),label: "",),
       BottomNavigationBarItem(icon:   Image  .asset("images/Bag.png",),label: "",),
        BottomNavigationBarItem(icon:  Image .asset("images/Profile1.png",),label: "",),


      ]),
    );
  }
  void _changetitle (String title ){
    setState(() {
      _title = title;
    });
  }

}
