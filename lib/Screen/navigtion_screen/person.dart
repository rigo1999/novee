import 'package:flutter/material.dart';
class person extends StatefulWidget {
  const person({Key? key}) : super(key: key);

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFF26B888),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20) ),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(top: 54,right: 129, left: 129,bottom: 75),
                    child: Text("تعديل الملف الشخصي",style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white),
                    ),
                  ),
                  alignment: AlignmentDirectional.center

              ),
              Padding(
                padding: const EdgeInsets.only(top: 92,right: 162, left: 161,bottom: 11),
                child: Stack(
                  children: [
                    Container(
                        height: 60,
                        width:60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child:Image.asset("images/Group 17627.png")

                    ),
                    Container(

                        height: 22,
                        width:22,
                        decoration: BoxDecoration(
                          border:   Border.all(width: 0.5,  color: Color(0XFF26B888),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                          ,
                        ),
                        child:Image.asset("images/Camera.png")

                    ),


                  ],
                ),
              ),
              Image.asset("images/Mask Group 75.png",fit: BoxFit.cover,width: double.infinity,height: 160 ,),

            ],

          ),

          SingleChildScrollView(
            child: Padding(

              padding: const EdgeInsets.only(top: 51,right: 32, left: 15),
              child: Expanded(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  textDirection: TextDirection.rtl,


                  children: [
                    Text("المعلومات الأساسية",style:
                    TextStyle(fontSize: 13,fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 1,
                      indent: 5,
                    )
                    ,
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity, // <-- TextField width
                      height: 48, // <-- TextField height
                      child:
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xff707070)

                                )
                            ),
                            hintText: "الاسم الأول"
                            , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      width: double.infinity, // <-- TextField width
                      height: 48, // <-- TextField height
                      child:
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xff707070)

                                )
                            ),
                            hintText: "الاسم الأخير"
                            , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13.4,
                    ),

                    SizedBox(
                      width: double.infinity, // <-- TextField width
                      height: 48, // <-- TextField height
                      child:
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xff707070)

                                )
                            ),
                            hintText: "البريد الإلكتروني"
                            , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 10)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13.4,
                    ),

                    Row(
                      children: [
                        SizedBox(
                            width: 48,
                            height: 48,
                            child:
                            DropdownButtonFormField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(                                 color: Color(0xff707070)
                                        ,),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: " "
                                    , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 9)


                                ),
                                dropdownColor: Colors.blueAccent,

                                items: [], onChanged:null)

                        ),
SizedBox(
  width:20 ,
),
                        SizedBox(
width: 260.5,
                          height: 48, // <-- TextField height
                          child:
                          TextField(

                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Color(0xffFFFFFF),
                                filled: true,
                                enabledBorder: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color(0xff707070)

                                    )
                                ),
                                hintText: "رقم الموبايل"
                                , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 10)
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13.4,
                    ),
                    SizedBox(
                      width: double.infinity, // <-- TextField width
                      height: 48, // <-- TextField height
                      child:
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color(0xff707070)

                                )
                            ),
                            hintText: "الوصف الوظيفي "
                            , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 10)
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 48,
                        child:
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(                                 color: Color(0xff707070)
                                    ,),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "الدولة "
                                , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 9)


                            ),
                            dropdownColor: Colors.blueAccent,

                            items: [], onChanged:null)

                    ),
                    SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 48,
                        child:
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(                                 color: Color(0xff707070)
                                    ,),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "المدينة "
                                , hintStyle: TextStyle(  color: Color(0xff99A0AA),fontSize: 9)


                            ),
                            dropdownColor: Colors.blueAccent,

                            items: [], onChanged:null)

                    ),




                  ],
                ),
              ),
            ),
          ),



                  ],
                ),


    );
  }
}
