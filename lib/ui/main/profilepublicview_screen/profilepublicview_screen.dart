import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';

class ProfilePublicView extends StatefulWidget {
  @override
  _ProfilePublicViewState createState() => _ProfilePublicViewState();
}

class _ProfilePublicViewState extends State<ProfilePublicView> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                webHeader(_sliderMenuContainerStateKey),
                SizedBox(height: 45.h),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.h, horizontal: scaffoldHorizontalPadding.w),
                  margin: EdgeInsets.only(top: 30.h),
                  height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(5),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset(
                              profile,
                              height: 100.h,
                            ),
                            onPressed: () {},
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                jaspreet,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: textSize24.nsp),
                              ),
                              SizedBox(height: 10.h),
                              Icon(Icons.location_on, color: Colors.blue,),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Icon(Icons.access_time, color: Colors.blue,),
                                  SizedBox(width: 10.w),
                                  Text(
                                    membershipDate,
                                    style: TextStyle(fontSize: textSize16.nsp),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25.h),
                      Container(
                        height: 40.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFF7FD),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Container(
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
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 15.w),
                              Icon(Icons.error, color: Colors.blue),
                              SizedBox(width: 5.w),
                              Text(details,
                                  style: TextStyle(
                                    fontSize: textSize20.nsp,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black,
                              blurRadius: 0.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(emailAddress,
                                style: TextStyle(
                                  fontSize: textSize14.nsp,
                                  color: Colors.black,
                                )),
                            SizedBox(width: 30.w),
                            Text(emailId,
                                style: TextStyle(
                                  fontSize: textSize14.nsp,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(bookmarkOrShare,
                          style: TextStyle(
                            fontSize: textSize26.nsp,
                            color: Colors.black,
                          )),
                      SizedBox(height: 10.h),
                      Wrap(
                        spacing: 2,
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(whatsapplogo, height: 100.h),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(facebooklogo, height: 100.h),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(gmaillogos, height: 100.h),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(pinterestlogo, height: 100.h),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(twitterlogo, height: 100.h),
                            onPressed: () {},
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
