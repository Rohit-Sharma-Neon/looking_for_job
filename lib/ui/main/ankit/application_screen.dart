import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationScreen extends StatefulWidget {
  @override
  _ApplicationScreenState createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Applications",style: TextStyle(fontWeight: FontWeight.w600,fontSize: textSize20,color: Colors.black),),
           actions: [
             Padding(
                 padding: EdgeInsets.only(right: 20.0),
                 child: GestureDetector(
                   onTap: () {},
                   child: Icon(
                       Icons.more_vert,
                     color: Colors.black,
                   ),
                 )
             ),
           ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 75,horizontal: 28),
          child: Column(
            children: [
              SizedBox(height: 1,),
              SizedBox(
                height: 50,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Color(0xffEFEFEF),
                  bottom: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    indicator: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: [
                      Tab(
                        text: "Applied(36)",
                      ),
                      Tab(
                        text: "Interviews(0)",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 400,
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    // first tab bar view widget
                    /// Login screen
                    Column(
                      children: [
                        SizedBox(height: 50.h),
                       Image.asset("assets/images/illustration_bg.png",height: 200,),
                        SizedBox(height: 15.h),
                        Text("No Schedule",style: TextStyle(fontSize: textSize22,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10.h),
                        Text("Lorem ipsum dolor sit amet\nconsectetor adipsing sit, sed do\neluismod",textAlign: TextAlign.center,)
                      ],
                    ),

                    /// Register screen
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 28),
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Color(0xFF461584),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Color(0xFF7939CB))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50.h,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFF461584),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Color(0xFF7939CB))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          'By top Sign Up button you accept\nterms and privacy this app',
                          style: TextStyle(color: Colors.white70),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                      ],
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
