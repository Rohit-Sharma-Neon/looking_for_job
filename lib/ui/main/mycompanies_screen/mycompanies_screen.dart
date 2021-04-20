import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/dashboard_navigation_button.dart';

class MyCompaniesScreen extends StatefulWidget {
  @override
  _MyCompaniesScreenState createState() => _MyCompaniesScreenState();
}

class _MyCompaniesScreenState extends State<MyCompaniesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Icon> icons = [];

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
              SizedBox(height: 25.h),
              Container(
                height: 60.h,
                width: 330.w,
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
                        spreadRadius: 1,
                        blurRadius: 1,
                        color: Color(0xFFE4E4E4),
                      ),
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(child: SizedBox(width: 10.w)),
                        WidgetSpan(
                          child: Icon(
                            FontAwesome.cube,
                            color: Color(0xFF198EDC),
                          ),
                        ),
                        WidgetSpan(
                            child: SizedBox(
                              width: 10,
                            )),
                        TextSpan(
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                              fontSize: textSize18),
                          text: myCompanies,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                // height: 250.h,
                width: 330.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Color(0xFFE4E4E4),
                    ),
                  ],
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(5),
                  //     bottomRight: Radius.circular(5)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset:
                              Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Search...',
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              InkWell(
                                child: Icon(Icons.search, color: Colors.grey),
                                onTap: () {},
                              )
                            ],
                          ),
                        )),
                    SizedBox(height: 15.h),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // MaterialButton(
                        //   height: 45.h,
                        //   minWidth: 160.w,
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: new BorderRadius.circular(5)),
                        //   onPressed: () {},
                        //   child: Text(
                        //     createNewCompany,
                        //     style: TextStyle(
                        //         color: Color(0xFFFFFFFF),
                        //         fontWeight: FontWeight.w600,
                        //         fontSize: textSize18),
                        //   ),
                        //   color: Color(0xFF198EDC),
                        // ),
                        PrimaryButton(
                          text: createNewCompany,
                          height: 45.h,
                          width: 160.w,

                        ),
                        SizedBox(
                          height: 110.h,
                          child: Scrollbar(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 10.h),
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
                                        children: [
                                          Text(
                                            name,
                                            style: TextStyle(
                                              fontSize: 18.nsp,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 140.w),
                                          Text(
                                            jobs,
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
                                    Text(noExpiredJobsFound),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        latestJobsComponent(),
                      ],
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
