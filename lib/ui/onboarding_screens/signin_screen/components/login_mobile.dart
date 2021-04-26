import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';

class LoginMobileComponent extends StatefulWidget {
  @override
  _LoginMobileComponentState createState() => _LoginMobileComponentState();
}

class _LoginMobileComponentState extends State<LoginMobileComponent> {
  bool _obscureText = true;

  bool isSignupScreen = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _rememberMeFlag = false;
  bool isEmployer = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(signinbg),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      lookingjoblogo,
                      height: 140.h,
                      width: 80.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('LOOKING FOR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize22, color: Color(0xFF1492E5)),),
                            Text(' JOB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize22, color: Color(0xFF19E39E)),),
                          ],
                        ),
                        Text('YOUR ONLY SOURCE FOR YOUR DREAM JOB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize8, color: Color(0xFFE5D2FF)),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 18.h,),
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: Color(0xffEFEFEF),
                    bottom: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(
                          text: "Login",
                        ),
                        Tab(
                          text: "Register",
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 400,
                  child: TabBarView(
                    children: [
                      // first tab bar view widget
                      /// Login screen
                      Column(
                        children: [
                          Container(
                            height: 50.h,
                            margin: EdgeInsets.only(top: 30),
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
                            height: 52.h,
                            margin: EdgeInsets.symmetric(vertical: 2.h),
                            decoration: BoxDecoration(
                                color: Color(0xFF461584),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xFF7939CB))),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 5.h, left: 20.w),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          suffixIcon: FlatButton(
                                              onPressed: _toggle,
                                              child: new Text(
                                                  _obscureText ? "Show" : "Hide", style: TextStyle(color: Color(0xFF1492E5))))),
                                      validator: (val) =>
                                      val.length < 6 ? 'Password too short.' : null,
                                      onSaved: (val) => _password = val,
                                      obscureText: _obscureText,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            child: Text('SIGN IN'),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.blue,
                              primary: Colors.white,
                            ),
                            onPressed: () {
                              print('Pressed');
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: _rememberMeFlag,
                                      onChanged: (value) => setState(() {
                                        _rememberMeFlag = !_rememberMeFlag;
                                      }),
                                    ),
                                    Text(
                                      "Remember me",
                                      style: TextStyle(color: Colors.white70),
                                    )
                                  ],
                                ),
                                onTap: () => setState(() {
                                  _rememberMeFlag = !_rememberMeFlag;
                                }),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Forgot password",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Or sign in with",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: textSize14.sp),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RaisedButton(
                                color: Color(0xFFB67DFF),
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 15, bottom: 15),
                                shape: StadiumBorder(),
                                onPressed: () {},
                                child: Icon(FontAwesome.google, color: Colors.white),
                              ),
                              RaisedButton(
                                color: Color(0xFFB67DFF),
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 15, bottom: 15),
                                shape: StadiumBorder(),
                                onPressed: () {},
                                child: Icon(FontAwesome.facebook, color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),

                      /// Register screen
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 50.h,
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
                                    hintText: 'Name',
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
                            margin: EdgeInsets.only(top: 10),
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
                            height: 54.h,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Color(0xFF461584),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xFF7939CB))),
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.h, bottom: 3.h, left: 20.w),
                                    child: TextFormField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                          suffixIcon: FlatButton(
                                              onPressed: _toggle,
                                              child: new Text(_obscureText ? "Show" : "Hide", style: TextStyle(color: Color(0xFF1492E5))))
                                      ),
                                      validator: (val) =>
                                      val.length < 6 ? 'Password too short.' : null,
                                      onSaved: (val) => _password = val,
                                      obscureText: _obscureText,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            'By top Sign Up button you accept\nterms and privacy this app',
                            style: TextStyle(color: Colors.white70),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10.h,
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
                                      builder: (BuildContext context) =>
                                          ProfileSeekerScreen()),
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
                                    "Create My Account",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff36195C),
                                        fontSize: textSize16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
