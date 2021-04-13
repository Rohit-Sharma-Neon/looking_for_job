import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';

class MembershipPlanScreen extends StatefulWidget {
  @override
  _MembershipPlanScreenState createState() => _MembershipPlanScreenState();
}

class _MembershipPlanScreenState extends State<MembershipPlanScreen> {

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: SliderMenuContainer(
          drawerIconColor: Colors.transparent,
          drawerIconSize: 0,
          appBarColor: bgScaffoldColor,
          appBarHeight: 0,
          key: _sliderMenuContainerStateKey,
          sliderMenuOpenSize: 280,
          title: Text(
            title,
            style: TextStyle(fontSize: textSize22.nsp, fontWeight: FontWeight.w700),
          ),
          sliderMenu: MenuWidget(
            drawerKey: _sliderMenuContainerStateKey,
          ),
          sliderMain: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                webHeader(_sliderMenuContainerStateKey),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
                  margin: EdgeInsets.only(top: 40.h),
                  height: 600.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.0),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: Text(allPlans, style: TextStyle(color: Color(0xFF333333), fontSize: textSize20.nsp, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
