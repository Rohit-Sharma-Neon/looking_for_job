import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/sizes.dart';

class PostJobMobileComponent extends StatefulWidget {
  @override
  PostJobMobileComponentState createState() => PostJobMobileComponentState();
}

class PostJobMobileComponentState extends State<PostJobMobileComponent> {
  String _dropDownValue;
  String _jobTypeValue;
  String _perHourValue;
  String _cityValue;
  bool _checkboxListTile = false;
  bool _hideCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: scaffoldHorizontalPadding.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*SizedBox(height: 100.h),
                Text(
                  "Post a Job",
                  style:
                      TextStyle(fontSize: 35.nsp, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Home",
                          style:
                              TextStyle(fontSize: 18.nsp, color: Colors.black)),
                      WidgetSpan(
                        child: Icon(Icons.arrow_right_outlined, size: 20),
                      ),
                      TextSpan(
                        text: "Post a Job",
                        style: TextStyle(fontSize: 18.nsp, color: Colors.black),
                      ),
                    ],
                  ),
                ),*/
                SizedBox(
                  height: 60.h,
                ),
                Container(
                  // height: 800,
                  // width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[350]),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 0,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: scaffoldHorizontalPadding + 10.w),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.blur_linear_outlined,
                                  size: 30.h,
                                  color: primaryColorLight,
                                ),
                              ),
                              WidgetSpan(
                                ///// should be in center
                                child: SizedBox(
                                  width: 10,
                                ),
                              ),
                              TextSpan(
                                text: "Company Information",
                                style: postAJobSubHeadingTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        color: Colors.grey[350],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: scaffoldHorizontalPadding + 10.w),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30.h,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Company",
                                      style: postAJobSubHeadingTextStyle),
                                  TextSpan(
                                      text: " *",
                                      style: TextStyle(
                                          fontSize: textSize20.nsp,
                                          color: Colors.black)),
                                ]),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                  height: 50.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[350]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 0,
                                          offset: Offset(0,
                                              1), // changes position of shadow
                                        ),
                                      ]),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isDense: false,
                                      hint: _dropDownValue == null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Text(
                                                'Select Company',
                                                style:dropDownTextStyle
                                              ),
                                            )
                                          : Text(
                                              _dropDownValue,
                                              style: TextStyle(
                                                  color: Colors.grey[600]),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      iconEnabledColor: Colors.grey,
                                      style: TextStyle(color: Colors.grey[600]),
                                      items: [
                                        '[+] New Company',
                                        "[+] New Company"
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
                                            _dropDownValue = val;
                                          },
                                        );
                                      },
                                    ),
                                  )),
                              SizedBox(height: 30.h),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Company Name",
                                      style: postAJobSubHeadingTextStyle),
                                  TextSpan(
                                      text: " *",
                                      style: TextStyle(
                                          fontSize: textSize20.nsp,
                                          color: Colors.black))
                                ]),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 50.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[350],
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: TextField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                "Logo",
                                style:postAJobSubHeadingTextStyle,
                              ),
                              SizedBox(height: 20.h),
                              ButtonTheme(
                                height: 50.h,
                                minWidth: 300.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: primaryColorLight
                                              .withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 1),
                                        )
                                      ]),
                                  child: OutlineButton(
                                    onPressed: () {},
                                    splashColor: primaryColorLight,
                                    borderSide: BorderSide(
                                      color: primaryColorLight,
                                    ),
                                    shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "Upload Logo",
                                      style: TextStyle(
                                        fontSize: textSize18.nsp,
                                        color: primaryColorLight,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text("Use 200x200px size for better view.",
                                  style:TextStyle(  fontSize: textSize16.nsp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                              SizedBox(
                                height: 50.h,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Company Description",
                                      style: postAJobSubHeadingTextStyle),
                                  TextSpan(
                                      text: " *",
                                      style: TextStyle(
                                          fontSize: textSize20.nsp,
                                          color: Colors.black)),
                                ]),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextField(
                                  autofocus: false,
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[200])))),
                              SizedBox(
                                height: 60.h,
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  // height: 1000.h,
                  // width: 350,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.w),
                        child: RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.badge,
                            size: 30.h,
                            color: primaryColorLight,
                          )),
                          TextSpan(
                              text: "   Job Detail",
                              style: postAJobSubHeadingTextStyle)
                        ])),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        color: Colors.grey[350],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: ButtonTheme(
                          height: 50.h,
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tightFor(height: 50),
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.check_circle_outline,
                                color: Colors.white,
                                size: 30.h,
                              ),
                              label: Text(
                                'Choose Category',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {
                                print('Pressed');
                              },
                              style: (ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xff198EDC)))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: scaffoldHorizontalPadding + 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30.h),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Title",
                                    style: postAJobSubHeadingTextStyle),
                                TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                        fontSize: textSize20.nsp,
                                        color: Colors.black))
                              ]),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[350],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
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
                            SizedBox(height: 30.h),
                            Text(
                              "Image",
                              style: postAJobSubHeadingTextStyle
                            ),
                            SizedBox(height: 20.h),
                            ButtonTheme(
                              height: 50.h,
                              minWidth: 300.w,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            primaryColorLight.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                child: OutlineButton(
                                  onPressed: () {},
                                  splashColor: primaryColorLight,
                                  borderSide: BorderSide(
                                    color: primaryColorLight,
                                  ),
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "Upload Image",
                                    style: TextStyle(
                                      fontSize: textSize18.nsp,
                                      color: primaryColorLight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text("Use 200x200px size for better view.",
                                style: TextStyle(
                                    fontSize: textSize16.nsp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                            SizedBox(
                              height: 50.h,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Description",
                                    style: postAJobSubHeadingTextStyle),
                                TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                        fontSize: textSize20.nsp,
                                        color: Colors.black)),
                              ]),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextField(
                                autofocus: false,
                                maxLines: 20,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[350])))),
                            SizedBox(
                              height: 30.h,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Job Type",
                                    style: postAJobSubHeadingTextStyle),
                                TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                        fontSize: textSize20.nsp,
                                        color: Colors.black)),
                              ]),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                                height: 50.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[350]),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isDense: false,
                                    hint: _jobTypeValue == null
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              'Full Time',
                                              style: TextStyle(
                                                  fontSize: textSize18.nsp,
                                                  fontWeight: FontWeight.w400
                                              ),
                                            ),
                                          )
                                        : Text(
                                            _jobTypeValue,
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.w500),
                                          ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    iconEnabledColor: Colors.grey,
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500),
                                    items: [
                                      ' Full Time',
                                      " Part Time",
                                      " Temporary",
                                      " Permanent",
                                      " Internship",
                                      " Freelancer",
                                      " Remotely",
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
                                          _jobTypeValue = val;
                                        },
                                      );
                                    },
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              "Salary",
                              style: postAJobSubHeadingTextStyle
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[350],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: TextField(
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Min",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      suffixIcon: Icon(Icons.attach_money),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[350],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: TextField(
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Max",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      suffixIcon: Icon(Icons.attach_money),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                                height: 50.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[350]),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isDense: false,
                                    hint: _perHourValue == null
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              'Per Hour',
                                              style: dropDownTextStyle
                                            ),
                                          )
                                        : Text(
                                            _perHourValue,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    iconEnabledColor: Colors.grey,
                                    style: TextStyle(color: Colors.grey[600]),
                                    items: [
                                      ' Per Hour',
                                      " per Day",
                                      " per week",
                                      " per month",
                                      " per year",
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
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1.3,
                                  child: Checkbox(
                                    value: _checkboxListTile,
                                    onChanged: (value) {
                                      setState(() {
                                        _checkboxListTile = !_checkboxListTile;
                                      });
                                    },
                                  ),
                                ),
                                Text("Negotiable",
                                    style: TextStyle(
                                        fontSize: textSize16.nsp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600]))
                              ],
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Text(
                              "Phone Number",
                              style: postAJobSubHeadingTextStyle
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[350]),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                      height: 50.h,
                                      width: 50.w,
                                      color: Colors.grey[200],
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/images/indianflag.jpg",
                                          height: 20,
                                        ),
                                      )),
                                  // VerticalDivider(),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextField(
                                        autofocus: false,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h),
                            // Transform.scale(
                            //   scale: 1.2,
                            //   child: CheckboxListTile(
                            //     controlAffinity:
                            //         ListTileControlAffinity.leading,
                            //     title: Text('Hide for users'),
                            //     value: _hideCheckBox,
                            //     onChanged: (value) {
                            //       setState(() {
                            //         _hideCheckBox = !_hideCheckBox;
                            //       });
                            //     },
                            //   ),
                            // ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1.3,
                                  child: Checkbox(
                                    value: _hideCheckBox,
                                    onChanged: (value) {
                                      setState(() {
                                        _hideCheckBox = !_hideCheckBox;
                                      });
                                    },
                                  ),
                                ),
                                Text("Hide from Users",
                                    style: TextStyle(
                                        fontSize: textSize16.nsp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600]))
                              ],
                            ),

                            SizedBox(
                              height: 50.h,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "City",
                                    style: postAJobSubHeadingTextStyle),
                                TextSpan(
                                    text: " *",
                                    style: TextStyle(
                                        fontSize: textSize20.nsp,
                                        color: Colors.black)),
                              ]),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                                height: 50.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[350]),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 0,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isDense: false,
                                    hint: _cityValue == null
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              'Select City',
                                              style: TextStyle(
                                                  fontSize: textSize18.nsp,
                                                fontWeight: FontWeight.w400
                                                 ),
                                            ),
                                          )
                                        : Text(
                                            _cityValue,
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                    isExpanded: true,
                                    iconSize: 30.0,
                                    iconEnabledColor: Colors.grey,
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.w500),
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
                            Text(
                              "Application Url",
                              style:postAJobSubHeadingTextStyle
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[350],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: TextField(
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "http://",
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      suffixIcon: Icon(Icons.link),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                                "Candidates  will follow this URL address to apply for the job.",
                                style: TextStyle(
                                    fontSize: textSize14.nsp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600])),
                            SizedBox(
                              height: 40.h,
                            ),
                            Text(
                              "Tags",
                              style: postAJobSubHeadingTextStyle
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[350],
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
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
                              height: 10.h,
                            ),
                            Text("Enter the separated by commas ",
                                style: TextStyle(
                                    fontSize: textSize14.nsp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600])),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 50),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30.h,
                    ),
                    label: Text(
                      'Post a Job',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: (ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff198EDC)))),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        ));
  }
}
