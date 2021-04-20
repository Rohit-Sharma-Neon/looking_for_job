import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/dashboard_navigation_button.dart';

class HiddenJobScreen extends StatefulWidget {
  @override
  _HiddenJobScreenState createState() => _HiddenJobScreenState();
}

class _HiddenJobScreenState extends State<HiddenJobScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedRadio;
  String _cityValue;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: BaseAppBar2(
        title: 'Dashboard',
        leadingIcon: Icons.menu,
        scaffoldKey: _scaffoldKey,
      ),
      drawer: BaseDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scaffoldHorizontalPadding.w,
          ),
          child: Column(
            children: [
              SizedBox(height: 15.h),
              DashBoardNavigationButton(),
              SizedBox(height: 20.h),
              Container(
                height: 50.h,
                width: 320.w,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF7FD),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 200.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                      ),
                    ],
                    color: Color(0xFFF9F9F9),
                  ),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.remove_red_eye,
                            size: 28.nsp,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                            child: SizedBox(
                              width: 10,
                            )),
                        TextSpan(
                          style: TextStyle(
                              color: Colors.black, fontSize: 18.nsp),
                          text: "Hidden Jobs",
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                height: 220.h,
                width: 320.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 0.0,
                    ),
                  ],
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(5),
                  //     bottomRight: Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 3,
                            offset:
                            Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                      child: Scrollbar(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 20.w, right: 20.w),
                                  height: 60.h,
                                  width: 430.w,
                                  // minWidth: 250.w,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: new BorderRadius.circular(5)),
                                  // onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Jobs",
                                        style: TextStyle(
                                          fontSize: 18.nsp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 140.w),
                                      Text(
                                        status,
                                        style: TextStyle(
                                          fontSize: 18.nsp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 80.w),
                                      Text(
                                        actions,
                                        style: TextStyle(
                                          fontSize: 18.nsp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  color: Color(0xFF198EDC),
                                ),
                                SizedBox(height: 10.h),
                                Text("No hidden jobs found."),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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

