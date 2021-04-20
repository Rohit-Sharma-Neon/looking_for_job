import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        key: _scaffoldKey,
        appBar: BaseAppBar2(
          title: 'Dashboard',
          leadingIcon: Icons.menu,
          scaffoldKey: _scaffoldKey,
        ),
        drawer: BaseDrawer(),
        body: SliderMenuContainer(
          drawerIconColor: Colors.transparent,
          drawerIconSize: 0,
          appBarColor: bgScaffoldColor,
          appBarHeight: 0,
          key: _sliderMenuContainerStateKey,
          sliderMenuOpenSize: 280,
          title: Text(
            title,
            style: TextStyle(fontSize: 22.nsp, fontWeight: FontWeight.w700),
          ),
          sliderMenu: MenuWidget(
            drawerKey: _sliderMenuContainerStateKey,
          ),
          sliderMain: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
                  margin: EdgeInsets.only(top: 40.h),
                  height: 600.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: Column(


                    children: [
                      Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Q?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "What we are?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Q?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Do I need to register to post a \njob?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Q?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "I forgot my password. How do \nI get a new one?",
                            style: TextStyle(
                              fontSize: textSize20.nsp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
