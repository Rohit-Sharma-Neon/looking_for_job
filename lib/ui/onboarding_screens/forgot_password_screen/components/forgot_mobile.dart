import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';

class ForgotMobileComponent extends StatefulWidget {
  @override
  _ForgotMobileComponentState createState() => _ForgotMobileComponentState();
}

class _ForgotMobileComponentState extends State<ForgotMobileComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 170.h),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(signinbg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  forgotpassword,
                  height: 240.h,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 25.nsp, fontWeight: FontWeight.bold),
                  //TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold),
                ),

                Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      color: Color(0xFF461584),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFF7939CB))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Color(0xFF1492E5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ProfileSeekerScreen()),
                        ModalRoute.withName('/'),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFE5D2FF), Color(0xffFFFFFF)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Container(
                        constraints:
                        BoxConstraints(maxWidth: 400.w, minHeight: 50.h),
                        alignment: Alignment.center,
                        child: Text(
                          "FORGET PASSWORD",
                          textAlign: TextAlign.center,
                          style:
                          TextStyle(color: Color(0xff36195C), fontSize: textSize16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}
