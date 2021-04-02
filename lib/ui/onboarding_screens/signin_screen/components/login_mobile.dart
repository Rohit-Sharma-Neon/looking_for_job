import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';

class LoginMobileComponent extends StatefulWidget {
  @override
  _LoginMobileComponentState createState() => _LoginMobileComponentState();
}

class _LoginMobileComponentState extends State<LoginMobileComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(flex: 1),
          Image.asset(
            appLogoWithName,
            height: 50,
          ),
          Spacer(flex: 1),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!",
                    style: TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold), //Theme.of(context).textTheme.headline1
                    ),
                SizedBox(height: 10.h),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.account_circle,
                    ),
                    labelText: 'Username / Email Address',
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 15.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          color: Color(0xFF424242),
                        ),
                      ),
                      TextSpan(
                        text: " Sign Up Now!",
                        style: TextStyle(
                          color: Color(0xFF0691CE),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterPage()),
                              ModalRoute.withName('/'),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  child: Text(
                    "Forgot Password?",
                    style:
                        TextStyle(color: Color(0xFF0691CE), fontSize: 14.nsp),
                  ),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ForgotPassword()),
                      ModalRoute.withName('/'),
                    );
                  },
                ),
                SizedBox(height: 15.h),
                MaterialButton(
                  height: 40.h,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xFF0691CE),
                  textColor: Color(0xFFffffff),
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DashBoardScreen()),
                      ModalRoute.withName('/'),
                    );
                  },
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
