import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SubCategoriesScreen extends StatefulWidget {
  @override
  _SubCategoriesScreenState createState() => _SubCategoriesScreenState();
}

String _dropDownValue;
String _perHourValue;
bool _hasBeenPressed = false;
// bool _textColor = false;


SfRangeValues _values = SfRangeValues(30.0, 110.0);

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: new Text('Category Name'),
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),

          IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 30.h,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                barrierColor: Colors.grey[600],
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                builder: (BuildContext context) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 120.w),
                          child: Text(
                            "Set Filters",
                            style: TextStyle(
                                fontSize: textSize22.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: textSize16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                  height: 50.h,
                                  width: 310.w,
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.grey[350]),
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ]),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isDense: false,
                                      hint: _perHourValue == null
                                          ? Padding(
                                        padding:
                                        const EdgeInsets.all(8.0),
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              WidgetSpan(
                                                child: Icon(
                                                  Icons
                                                      .shopping_bag_outlined,
                                                  size: 24.sp,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              WidgetSpan(
                                                  child: SizedBox(
                                                    width: 10.w,
                                                  )),
                                              TextSpan(
                                                style: TextStyle(
                                                  color:
                                                  Color(0xFF333333),
                                                  fontSize: textSize16.sp,
                                                ),
                                                text: "Graphic & Design",
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                          : Text(
                                        _perHourValue,
                                        style: TextStyle(
                                            color: Colors.black),
                                      ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: Colors.black),
                                      items: [
                                        ' Increase Sales',
                                        " Gain Attention",
                                        " Make Brand Name Memorable",
                                        " Build Relationship",
                                        " Corporate Design",
                                        " Vehicle Wrap Graphic Design",
                                        " Motion Graphic Design",
                                        " Stationer Design",
                                      ].map(
                                            (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (val) {
                                        setState(
                                              () {
                                            _perHourValue = val;
                                          },
                                        );
                                      },
                                    ),
                                  )),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                " Sub Category",
                                style: TextStyle(
                                    fontSize: textSize16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                  height: 50.h,
                                  width: 310.w,
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.grey[350]),
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ]),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isDense: false,
                                      hint: _perHourValue == null
                                          ? Padding(
                                        padding:
                                        const EdgeInsets.all(8.0),
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              WidgetSpan(
                                                child: Icon(
                                                  Icons
                                                      .shopping_bag_outlined,
                                                  size: 24.sp,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              WidgetSpan(
                                                  child: SizedBox(
                                                    width: 10.w,
                                                  )),
                                              TextSpan(
                                                style: TextStyle(
                                                  color:
                                                  Color(0xFF333333),
                                                  fontSize: textSize16.sp,
                                                ),
                                                text: "UI/UX Design",
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                          : Text(
                                        _perHourValue,
                                        style: TextStyle(
                                            color: Colors.black),
                                      ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: Colors.black),
                                      items: [
                                        ' Increase Sales',
                                        " Gain Attention",
                                        " Make Brand Name Memorable",
                                        " Build Relationship",
                                        " Corporate Design",
                                        " Vehicle Wrap Graphic Design",
                                        " Motion Graphic Design",
                                        " Stationer Design",
                                      ].map(
                                            (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (val) {
                                        setState(
                                              () {
                                            _perHourValue = val;
                                          },
                                        );
                                      },
                                    ),
                                  )),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: textSize16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                height: 50.h,
                                width: 310.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[350]),
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 0.5,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Image.asset(
                                            "assets/images/placeholder.png",
                                            height: 24.h,
                                            color: Colors.black,
                                          ),
                                        ),
                                        WidgetSpan(
                                            child: SizedBox(
                                              width: 10.w,
                                            )),
                                        TextSpan(
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: textSize16.sp,
                                          ),
                                          text: "California,LA",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Min,Salary",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 170.w,
                                  ),
                                  Text(
                                    "Max,Salary",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              SfRangeSlider(
                                min: 10.0,
                                max: 150.0,
                                values: _values,
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 1,
                                onChanged: (SfRangeValues values) {
                                  setState(() {
                                    _values = values;
                                  });
                                },
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Job Type",
                                style: TextStyle(
                                    fontSize: textSize16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  // ignore: deprecated_member_use
                                  RaisedButton(
                                   shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                                    color: _hasBeenPressed
                                        ? Colors.blue
                                    : Colors.white,
                                    onPressed: ()
                                    {
                                      setState(() {
                                        _hasBeenPressed =
                                        !_hasBeenPressed;
                                        // _textColor=!_textColor;
                                      });
                                    },
                                    child: Text(
                                    "Fulltime",
                                    // style: TextStyle(color: _textColor? Colors.black:Colors.white),
                                  ),)
                                ],
                              )
                            ],
                          ),)
                      ]
                      ,
                    )
                    ,
                  );
                },
              );
            },
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                        fontSize: textSize18.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.grey[300],
                          minimumSize: Size(40, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Row(
                        children: [
                          Text(
                            "London",
                            style: TextStyle(
                                fontSize: textSize16.sp,
                                fontWeight: FontWeight.w600,
                                color: primaryColorLight),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.clear_rounded,
                            color: primaryColorLight,
                          )
                        ],
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Colors.grey[300],
                          minimumSize: Size(40, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Row(
                        children: [
                          Text(
                            "Design",
                            style: TextStyle(
                                fontSize: textSize16.sp,
                                fontWeight: FontWeight.w600,
                                color: primaryColorLight),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Icon(
                            Icons.clear_rounded,
                            color: primaryColorLight,
                          )
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "120 Job Found",
                    style: TextStyle(
                      fontSize: textSize16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 110.w,
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 50.h,
                    width: 100.w,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isDense: false,
                        hint: _dropDownValue == null
                            ? Text(
                          'Newest',
                          style: TextStyle(
                              fontSize: textSize16.sp,
                              color: primaryColorLight,
                              fontWeight: FontWeight.w600),
                        )
                            : Text(
                          _dropDownValue,
                          style: TextStyle(color: primaryColorLight),
                        ),
                        isExpanded: true,
                        iconSize: 30.0,
                        iconEnabledColor: primaryColorLight,
                        style: TextStyle(
                            color: primaryColorLight,
                            fontWeight: FontWeight.w600),
                        items: ['[+] New Company', "[+] New Company"].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                                () {
                              _dropDownValue = val;
                            },
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/job_description');
                        },
                        child: Column(
                          children: [
                            OpenContainer(
                              transitionType: ContainerTransitionType.fade,
                              transitionDuration:
                              const Duration(milliseconds: 600),
                              closedBuilder: (context, action) {
                                return jobCard();
                              },
                              middleColor: Colors.red,
                              closedColor: Colors.white,
                              closedShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              openBuilder: (BuildContext context,
                                  void Function({Object returnValue}) action) {
                                return JobDescription();
                              },
                            ),
                            SizedBox(
                              height: 15.h,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
