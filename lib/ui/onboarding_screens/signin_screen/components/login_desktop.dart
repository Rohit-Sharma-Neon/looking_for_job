import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';

class LoginDesktopComponent extends StatefulWidget {
  @override
  _LoginDesktopComponentState createState() => _LoginDesktopComponentState();
}

class _LoginDesktopComponentState extends State<LoginDesktopComponent> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: 400.w,
            color: Color(0xFFF8F8F8),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 70.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32.nsp,
                          ),
                        ),
                      ]
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Home",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.nsp,
                        ),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(Icons.arrow_right_outlined),
                      ),
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.nsp,
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
                Text("Welcome Back!",
                    style: TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold)),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                color: Color(0xFF424242),
                              ),
                            ),
                          ]
                      ),
                    ),
                    InkWell(
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: " Sign Up Now!",
                                style: TextStyle(
                                  color: Color(0xFF0691CE),
                                ),
                              ),
                            ]
                        ),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => RegisterPage()),
                          ModalRoute.withName('/'),
                        );
                      },
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                      ),
                      labelText: 'Username / Email Address',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Text("Forgot Password?", style: TextStyle(color: Color(0xFF0691CE), fontSize: 14.nsp),),
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) => ForgotPassword()),
                            ModalRoute.withName('/'),
                          );},
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 140.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),),
                    color: Color(0xFF0691CE),
                    textColor: Color(0xFFffffff),
                    child: Text("Login"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
