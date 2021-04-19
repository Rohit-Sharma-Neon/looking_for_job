import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/theme/oulined_button.dart';

class AcoountScreen extends StatefulWidget {
  @override
  _AcoountScreenState createState() => _AcoountScreenState();
}

class _AcoountScreenState extends State<AcoountScreen> {
  String radioItem = '';
  String _cityValue;
  bool _fullTime = false;
  bool _partTime = false;
  bool _temproray = false;
  bool _permanent = false;
  bool _internship = false;
  bool _freelancer = false;
  bool _remotely = false;
  bool _hour = false;
  bool _day = false;
  bool _month = false;
  bool _year = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Name",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 320.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.grey[600],
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: " User Name",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.grey[600],
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Email Address",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.grey[600],
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Phone Number",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.phone_outlined,
                        color: Colors.grey[600],
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Avatar",
            style: TextStyle(
                fontSize: textSize20.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20.h),
          // ButtonTheme(
          //   height: 50.h,
          //   minWidth: 350.w,
          //   child: OutlineButton(
          //     onPressed: () {},
          //     splashColor: Color(0xff198EDC),
          //     borderSide: BorderSide(
          //       color: Color(0xff198EDC),
          //     ),
          //     shape: ContinuousRectangleBorder(
          //         borderRadius: BorderRadius.circular(5)),
          //     child: Text(
          //       "Upload Avatar",
          //       style: TextStyle(
          //         fontSize: textSize20.sp,
          //         color: Color(0xff198EDC),
          //       ),
          //     ),
          //   ),
          // ),
          PrimaryOutlinedButton(
            height: primaryButtonHeight = 50.h,
            width: 350.w,
            text: "Upload Avatar",

          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Use 150x150px image for perfect look.",
              style: TextStyle(fontSize: textSize16.sp, color: Colors.grey)),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "Gender",
            style: TextStyle(fontSize: textSize20.sp),
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
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "City",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
              height: 50.h,
              width: 350.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  isDense: false,
                  hint: _cityValue == null
                      ? Text(
                          '    Select City',
                          style: TextStyle(fontSize: textSize18.sp),
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
            height: 20.h,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Address",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
              TextSpan(
                  text: " *",
                  style:
                      TextStyle(fontSize: textSize20.sp, color: Colors.black)),
            ]),
          ),
          SizedBox(height: 20.h),
          TextField(
            autofocus: false,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: "Address",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[350]),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("About Me", style: TextStyle(fontSize: 20.sp)),
          SizedBox(height: 20.h),
          TextField(
            autofocus: false,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "Description",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[350]),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Website", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.insert_link_outlined,
                        color: Colors.grey[600],
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Facebook", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
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
                        "assets/images/facebooklogo.png",
                        color: Colors.grey[600],
                        height: 20,
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Instagram", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
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
                        "assets/images/intagram.png",
                        color: Colors.grey[600],
                        height: 15,
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Twitter", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
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
                        "assets/images/twitter.png",
                        color: Colors.grey[600],
                        height: 15,
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("LinkedIn", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
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
                        "assets/images/linkedin.png",
                        color: Colors.grey[600],
                        height: 20,
                      )),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("YouTube", style: TextStyle(fontSize: 20.sp)),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 50.h,
            width: 350.w,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      "assets/images/youtubelogo.png",
                      color: Colors.grey[600],
                      height: 30.h,
                    ),
                  ),
                ),
                // VerticalDivider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          // ButtonTheme(
          //   height: 50,
          //   child: RaisedButton(
          //     color: Color(0xff198EDC),
          //     onPressed: () {
          //       print('Pressed');
          //     },
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5.0),
          //     ),
          //     child: Text(
          //       "Save Changes",
          //       style: TextStyle(color: Colors.white, fontSize: 16),
          //     ),
          //   ),
          // ),
          PrimaryButton(
            text: "Save Changes",
            height: 50.h,
            width: 130.w,
            onPressed: (){
              print("Pressed");
            },
          ),
          SizedBox(
            height: 100.h,
          ),
          Container(
            width: 350.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "New Password",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[350],
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    " Reapeat New Password",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[350],
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // ButtonTheme(
                  //   height: 50,
                  //   child: RaisedButton(
                  //     color: Color(0xff198EDC),
                  //     onPressed: () {
                  //       print('Pressed');
                  //     },
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5.0),
                  //     ),
                  //     child: Text(
                  //       "Update",
                  //       style: TextStyle(color: Colors.white, fontSize: 16),
                  //     ),
                  //   ),
                  // ),
                  PrimaryButton(
                    text: "Update",
                    height: 50.h,
                    width: 100,
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 350.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[350]),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Job Type",
                    style: TextStyle(fontSize: 26.sp),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Full Time'),
                      value: _fullTime,
                      onChanged: (value) {
                        setState(() {
                          _fullTime = !_fullTime;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Part Time'),
                      value: _partTime,
                      onChanged: (value) {
                        setState(() {
                          _partTime = !_partTime;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Temproray'),
                      value: _temproray,
                      onChanged: (value) {
                        setState(() {
                          _temproray = !_temproray;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Permanent'),
                      value: _permanent,
                      onChanged: (value) {
                        setState(() {
                          _permanent = !_permanent;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Internship'),
                      value: _internship,
                      onChanged: (value) {
                        setState(() {
                          _internship = !_internship;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Freelancer'),
                      value: _freelancer,
                      onChanged: (value) {
                        setState(() {
                          _freelancer = !_freelancer;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Remotely'),
                      value: _remotely,
                      onChanged: (value) {
                        setState(() {
                          _remotely = !_remotely;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    "Salary Type",
                    style: TextStyle(fontSize: 26.sp),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Hour'),
                      value: _hour,
                      onChanged: (value) {
                        setState(() {
                          _hour = !_hour;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Day'),
                      value: _day,
                      onChanged: (value) {
                        setState(() {
                          _day = !_day;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Month'),
                      value: _month,
                      onChanged: (value) {
                        setState(() {
                          _month = !_month;
                        });
                      },
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Year'),
                      value: _year,
                      onChanged: (value) {
                        setState(() {
                          _year = !_year;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Salary",
                    style: TextStyle(fontSize: 26.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[350],
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset: Offset(0, 2),
                              )
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Max"),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[350],
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset: Offset(0, 2),
                              )
                            ]),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: TextField(
                            autofocus: false,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Min"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // ButtonTheme(
                  //   height: 50,
                  //   minWidth: 350.w,
                  //   child: RaisedButton(
                  //     color: Color(0xff198EDC),
                  //     onPressed: () {
                  //       print('Pressed');
                  //     },
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(5.0),
                  //     ),
                  //     child: Text(
                  //       "Advance Search",
                  //       style: TextStyle(color: Colors.white, fontSize: 16),
                  //     ),
                  //   ),
                  // ),
                  PrimaryButton(
                    text: "Advance Search",
                    height: 50.h,
                    width: 150.w,
                    onPressed: () {
                      print('Pressed');
                    },
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
