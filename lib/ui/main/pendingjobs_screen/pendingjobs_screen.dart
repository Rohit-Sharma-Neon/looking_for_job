import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/dashboard_navigation_button.dart';



class PendingJobScreen extends StatefulWidget {
  @override
  _PendingJobScreenState createState() => _PendingJobScreenState();
}

class _PendingJobScreenState extends State<PendingJobScreen> {

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
      appBar: BaseAppBar(),
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
                        spreadRadius: 2,
                        blurRadius: 2,
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
                            Icons.access_time,
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
                          text: "Pending Jobs",
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                height: 200.h,
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
                      height: 110.h,
                      child: Scrollbar(
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                                  height: 60.h,
                                  width: 430.w,
                                  // minWidth: 250.w,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: new BorderRadius.circular(5)),
                                  // onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        jobs,
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
                                Text(noActiveJobsFound),
                              ],
                            ),
                          ],
                        ),
                      ),
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




