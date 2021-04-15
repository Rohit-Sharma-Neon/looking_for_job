import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/button.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewResume extends StatefulWidget {
  @override
  _AddNewResumeState createState() => _AddNewResumeState();
}

class _AddNewResumeState extends State<AddNewResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgScaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                addnewresume,
                style: TextStyle(fontSize: textSize24),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                  width: 350.w,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(child: SizedBox(width: 10.w)),
                              WidgetSpan(
                                child: Icon(
                                  Icons.attachment_rounded,
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
                                    color: Color(0xFF333333),
                                    fontWeight: FontWeight.w600,
                                    fontSize: textSize18),
                                text: addnewresume,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(fontSize: textSize18),
                            ),
                            SizedBox(
                              height: 15.h,
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
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              "File",
                              style: TextStyle(fontSize: textSize18),
                            ),
                            SizedBox(height: 15.h),
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
                                // ignore: deprecated_member_use
                                child: OutlineButton(
                                  onPressed: () {},
                                  splashColor: primaryColorLight,
                                  borderSide: BorderSide(
                                    color: primaryColorLight,
                                  ),
                                  shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "Upload Resume",
                                    style: TextStyle(
                                      fontSize: textSize18.nsp,
                                      color: primaryColorLight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "only pdf,doc,rtx,ppt,jpeg,jpg,bmp,png file type allowed ",
                              style: TextStyle(
                                  fontSize: 16.nsp, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            MyButton(
                              text: "Save",
                              width: 100.w,
                              height: 50.h,
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            ),

                            SizedBox(height: 40.h)
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
