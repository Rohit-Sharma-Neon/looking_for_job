import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/button.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    //  var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // SizedBox(
            //   height: 50.h,
            // ),
            Container(
              height: 150.h,
              width: 370.w,
              color: Color(0xffF8F8F8),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
                child: Text(
                  "Feedback",
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text("Tell us what you think of us ",
                style: TextStyle(
                  fontSize: 25.nsp,
                )),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "User Details",
              style: TextStyle(fontSize: 20),
            ),
             SizedBox(
                  height: 15.h,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Full Name"),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 15.h,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Email Address"),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 15.h,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Phone Number"),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 15.h,
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
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Subject"),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Text("is there anything would you like to tell us ?",style:TextStyle(fontSize: 16)),
                SizedBox(
                  height: 15.h,
                ),
                TextField(
                  autofocus: false,
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: "Message",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[350]),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
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
                //       "Submit",
                //       style: TextStyle(color: Colors.white,fontSize: 16),
                //     ),
                //   ),
                // ),
                MyButton(
                  width: 100.w,
                  height: 50.h,
                  // color: primaryColorLight,
                ),
                SizedBox(height: 100.h,)
          ]),
        ),
      ),
    );
  }
}
