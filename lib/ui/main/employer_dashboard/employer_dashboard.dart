import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';
import 'package:lookingforjob_flutter/widgets/dashboard_navigation_button.dart';

class EmployerDashboard extends StatefulWidget {
  @override
  _EmployerDashboardState createState() => _EmployerDashboardState();
}

class _EmployerDashboardState extends State<EmployerDashboard> {
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
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 25.h, horizontal: scaffoldHorizontalPadding.w),
                margin: EdgeInsets.only(top: 15.h),
                height: 200.h,
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
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[350]),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.0),
                                    spreadRadius: 0.5,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(profile, height: 60.h)),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text(
                              jaspreet,
                              style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w500,
                                  fontSize: textSize26),
                            ),
                            Text(
                              youLastLogged_,
                              style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: textSize14),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              timming0603,
                              style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: textSize14),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IntrinsicHeight(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  num0,
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontWeight: FontWeight.w600,
                                    fontSize: textSize20,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.shopping_bag,
                                      color: Color(0xFF198EDC),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      jobs,
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontWeight: FontWeight.w400,
                                          fontSize: textSize16),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(),
                            SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    free,
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontWeight: FontWeight.w600,
                                      fontSize: textSize20,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.pages_outlined,
                                        color: Color(0xFF198EDC),
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        membership,
                                        style: TextStyle(
                                            color: Color(0xFF666666),
                                            fontWeight: FontWeight.w400,
                                            fontSize: textSize16),
                                      ),
                                    ],
                                  ),
                                ]),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white,
                      ),
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.person,
                                size: 28.sp,
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
                                  fontSize: textSize16),
                              text: "Account Details",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: scaffoldHorizontalPadding.w),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[350]),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(0)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Name",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(top: 15.h,left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(8.0),
                          //             child: Icon(
                          //               Icons.person_outline,
                          //               color: Color(0xFFA0A0A0),
                          //             )),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: Icons.person_outline,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "User Name",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: Icons.person_outline,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Email Address",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: Icons.email_outlined,
                            // decoration: InputDecoration(
                            //     contentPadding: EdgeInsets.only(top: 15.h,left: 50),
                            //     prefixIcon: Container(
                            //       margin: EdgeInsets.only(right: 5.w),
                            //       height: 50.h,
                            //       width: 50.w,
                            //       color: Color(0xFFF8F8F8),
                            //       child: Padding(
                            //           padding: EdgeInsets.all(8.0),
                            //           child: Icon(
                            //             Icons.email_outlined,
                            //             color: Color(0xFFA0A0A0),
                            //           )),
                            //     ),
                            //     border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Phone Number",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(top: 15.h,left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(8.0),
                          //             child: Icon(
                          //               Icons.phone_outlined,
                          //               color: Color(0xFFA0A0A0),
                          //             )),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: Icons.phone_outlined,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Avatar",
                          style: TextStyle(
                            fontSize: textSize16,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ButtonTheme(
                            height: 40.h,
                            minWidth: double.infinity,
                            child: OutlineButton(
                              onPressed: () {},
                              splashColor: Color(0xff198EDC),
                              borderSide: BorderSide(
                                color: Color(0xff198EDC),
                              ),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "Upload Avatar",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff198EDC),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text("Use 150x150px image for perfect look.",
                            style: TextStyle(
                              fontSize: textSize14,
                              color: Color(0xFF888888),
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Gender",
                          style: TextStyle(
                            fontSize: textSize16,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            Text(male),
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            Text(feMale),
                            Radio(
                              value: 3,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            Text(other),
                          ],
                        ),
                        SizedBox(
                          width: 50.w,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50.w,
                                // child: RadioListTile(
                                //   groupValue: radioItem,
                                //   title: Text('Male'),
                                //   value: 'Item 3',
                                //   onChanged: (val) {
                                //     setState(() {
                                //       radioItem = val;
                                //     });
                                //   },
                                // ),
                              ),
                              // SizedBox(
                              //   width: 50.w,
                              //   child: RadioListTile(
                              //     groupValue: radioItem,
                              //     title: Text('Female'),
                              //     value: 'Item 2',
                              //     onChanged: (val) {
                              //       setState(() {
                              //         radioItem = val;
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 50.w,
                        //   child: RadioListTile(
                        //     groupValue: radioItem,
                        //     title: Text('Other'),
                        //     value: 'Item 3',
                        //     onChanged: (val) {
                        //       setState(() {
                        //         radioItem = val;
                        //       });
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "City",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            height: 45.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 0.5,
                                    blurRadius: 1,
                                    // changes position of shadow
                                  ),
                                ]),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isDense: false,
                                hint: _cityValue == null
                                    ? Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.h),
                                        child: Text(
                                          'Select City',
                                          style: TextStyle(
                                            fontSize: textSize16,
                                            color: Color(0xFF808080),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    : Text(
                                        _cityValue,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                isExpanded: true,
                                iconSize: 30.0,
                                style: TextStyle(color: Colors.black),
                                items: [
                                  ' Banglearu',
                                  " punjab",
                                  " jaipur",
                                  " Mumbai",
                                  " Noida",
                                  " Delhi",
                                  " U.P",
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
                                      _cityValue = val;
                                    },
                                  );
                                },
                              ),
                            )),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Address",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(height: 10.h),
                        TextField(
                          autofocus: false,
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[350]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("About Me",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 10.h),

                        TextField(
                          autofocus: false,
                          maxLines: 10,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[350]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("Website",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(8.0),
                          //             child: Icon(
                          //               Icons.insert_link_outlined,
                          //               color: Color(0xFFA0A0A0),
                          //             )),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: Icons.insert_link_outlined,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("Facebook",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(12.0),
                          //             child: Icon(FontAwesome.facebook),
                          //         ),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: FontAwesome.facebook,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("Instagram",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(16.0),
                          //             child: Image.asset(
                          //               "assets/images/intagram.png",
                          //               color: Color(0xFFA0A0A0),
                          //             )
                          //         ),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: FontAwesome.instagram,
                          ),
                          // child: Row(
                          //   children: [
                          //     Container(
                          //       height: 50.h,
                          //       width: 50.w,
                          //       color: Colors.grey[200],
                          //       child: Padding(
                          //           padding: const EdgeInsets.all(16.0),
                          //           child: Image.asset(
                          //             "assets/images/intagram.png",
                          //             color: Color(0xFFA0A0A0),
                          //             height: 15,
                          //           )),
                          //     ),
                          //     // VerticalDivider(),
                          //     Expanded(
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10.0),
                          //         child: TextField(
                          //           autofocus: false,
                          //           decoration: InputDecoration(
                          //               border: InputBorder.none),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("Twitter",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(16.0),
                          //             child: Image.asset(
                          //               "assets/images/twitter.png",
                          //               color: Color(0xFFA0A0A0),
                          //             )
                          //         ),
                          //       ),
                          //       border: InputBorder.none),
                          // ),

                          // child: Row(
                          //   children: [
                          //     Container(
                          //       height: 45.h,
                          //       width: 50.w,
                          //       color: Colors.grey[200],
                          //       child: Padding(
                          //           padding: const EdgeInsets.all(16.0),
                          //           child: Image.asset(
                          //             "assets/images/twitter.png",
                          //             color: Color(0xFFA0A0A0),
                          //             height: 15,
                          //           )),
                          //     ),
                          //     // VerticalDivider(),
                          //     Expanded(
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10.0),
                          //         child: TextField(
                          //           autofocus: false,
                          //           decoration: InputDecoration(
                          //               border: InputBorder.none),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: FontAwesome.twitter,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("LinkedIn",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(16.0),
                          //             child: Image.asset(
                          //               "assets/images/linkedin.png",
                          //               color: Color(0xFFA0A0A0),
                          //             )
                          //         ),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          // child: Row(
                          //   children: [
                          //     Container(
                          //       height: 45.h,
                          //       width: 50.w,
                          //       color: Colors.grey[200],
                          //       child: Padding(
                          //           padding: const EdgeInsets.all(16.0),
                          //           child: Image.asset(
                          //             "assets/images/linkedin.png",
                          //             color: Color(0xFFA0A0A0),
                          //             height: 20,
                          //           )),
                          //     ),
                          //     // VerticalDivider(),
                          //     Expanded(
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10.0),
                          //         child: TextField(
                          //           autofocus: false,
                          //           decoration: InputDecoration(
                          //               border: InputBorder.none),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: FontAwesome.linkedin,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text("YouTube",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 0.5,
                                  blurRadius: 1,
                                  // changes position of shadow
                                ),
                              ]),
                          // child: TextField(
                          //   autofocus: false,
                          //   decoration: InputDecoration(
                          //       contentPadding: EdgeInsets.only(
                          //           top: 15.h, left: 50),
                          //       prefixIcon: Container(
                          //         margin: EdgeInsets.only(
                          //             right: 5.w),
                          //         height: 50.h,
                          //         width: 50.w,
                          //         color: Color(0xFFF8F8F8),
                          //         child: Padding(
                          //             padding: EdgeInsets.all(4.0),
                          //             child: Image.asset(
                          //               "assets/images/youtubelogo.png",
                          //               color: Color(0xFFA0A0A0),
                          //             )
                          //         ),
                          //       ),
                          //       border: InputBorder.none),
                          // ),
                          child: CustomTextFormField(
                            autoFocus: false,
                            icons: FontAwesome.youtube_play,
                          ),
                          // child: Row(
                          //   children: [
                          //     Container(
                          //       height: 45.h,
                          //       width: 50.w,
                          //       color: Colors.grey[200],
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(4.0),
                          //         child: Image.asset(
                          //           "assets/images/youtubelogo.png",
                          //           color: Color(0xFFA0A0A0),
                          //           height: 30.h,
                          //         ),
                          //       ),
                          //     ),
                          //     // VerticalDivider(),
                          //     Expanded(
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10.0),
                          //         child: TextField(
                          //           autofocus: false,
                          //           decoration: InputDecoration(
                          //               border: InputBorder.none),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        ButtonTheme(
                          height: 50,
                          child: RaisedButton(
                            color: Color(0xff198EDC),
                            onPressed: () {
                              print('Pressed');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                fontSize: textSize16,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[350]),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white,
                      ),
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.lock,
                                size: 28.sp,
                                color: Color(0xff198EDC),
                              ),
                            ),
                            WidgetSpan(
                                child: SizedBox(
                              width: 10,
                            )),
                            TextSpan(
                              style: TextStyle(
                                fontSize: textSize16,
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.w600,
                              ),
                              text: "Password",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10.h, horizontal: scaffoldHorizontalPadding.w),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[350]),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "New Password",
                        style: TextStyle(
                          fontSize: textSize16,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 45.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                // changes position of shadow
                              ),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: TextField(
                            autofocus: false,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        " Reapeat New Password",
                        style: TextStyle(
                          fontSize: textSize16,
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 45.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                // changes position of shadow
                              ),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: TextField(
                            autofocus: false,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ButtonTheme(
                        height: 50,
                        child: RaisedButton(
                          color: Color(0xff198EDC),
                          onPressed: () {
                            print('Pressed');
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            "Update",
                            style: TextStyle(
                              fontSize: textSize16,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
