import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';

class ForgotDesktopComponent extends StatefulWidget {
  @override
  _ForgotDesktopComponentState createState() => _ForgotDesktopComponentState();
}

class _ForgotDesktopComponentState extends State<ForgotDesktopComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 200.h,
              width: 400.w,
              color: Color(0xFFF8F8F8),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 70.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Forgot Password?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32.sp,
                        ),
                      ),
                    ]),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Home",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(Icons.arrow_right_outlined),
                        ),
                        TextSpan(
                          text: "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Forgot Password?",
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.account_circle,
                        ),
                        labelText: 'Email Address',
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      // child: RaisedButton(
                      //   padding: EdgeInsets.only(left: 95.w, right: 95.w),
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(5.0)),
                      //   color: Color(0xFF0691CE),
                      //   textColor: Color(0xFFffffff),
                      //   child: Text("Request Password"),
                      //   onPressed: () {
                      //     if (_formKey.currentState.validate()) {
                      //       _formKey.currentState.save();
                      //     }
                      //   },
                      // ),
                      child: PrimaryButton(
                        text: "Request Password",
                        height: 50.h,
                        width: 200.w,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
