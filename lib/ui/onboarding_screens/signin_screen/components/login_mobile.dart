import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/components/dashboard_mobile.dart';
import 'package:lookingforjob_flutter/ui/main/kunal/onboarding_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/components/forgot_mobile.dart';

class LoginMobileComponent extends StatefulWidget {
  @override
  _LoginMobileComponentState createState() => _LoginMobileComponentState();
}

class _LoginMobileComponentState extends State<LoginMobileComponent> {
  final _formKey = GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 90,bottom: 40),
              // padding: EdgeInsets.symmetric(vertical: 80,horizontal: 28),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(signinbg),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8.w),
                          decoration: BoxDecoration(
                              color: Color(0xFF5B4DBC),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ),
                              ]),
                          child: Image.asset(
                            lookingjoblogo,
                            height: 140.h,
                            width: 80.w,
                          ),
                        ),
                        SizedBox(width: 17.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'LOOKING FOR',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: textSize20,
                                      color: Color(0xFF1492E5)),
                                ),
                                Text(
                                  ' JOB',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: textSize20,
                                      color: Color(0xFF19E39E)),
                                ),
                              ],
                            ),
                            Text(
                              'YOUR ONLY SOURCE FOR YOUR DREAM JOB',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: textSize8,
                                  color: Color(0xFFE5D2FF)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,

                        bottom: TabBar(
                          indicatorWeight: 1,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.transparent,
                          indicator: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF1492E5)),
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.white,
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: [
                            Tab(
                              text: "Sign in",
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
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          // first tab bar view widget
                          /// Login screen
                          Column(
                            children: [
                              Container(
                                height: 50.h,
                                margin: EdgeInsets.only(top: 23),
                                decoration: BoxDecoration(
                                    color: Color(0xFF461584),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Color(0xFF7939CB))),
                                child: Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: TextFormField(
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
                                      validator: (val) =>
                                          val.isEmpty || !val.contains("@")
                                              ? "Please enter your email"
                                              : null,

                                      // onSaved: (val) => _password = val,
                                      // obscureText: _obscureText,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
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
                                            EdgeInsets.only(top: 3.h, left: 20.w,),
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
                                                      _obscureText
                                                          ? "Show"
                                                          : "Hide",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF1492E5))))),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter your password";
                                            } else if (value.length < 6) {
                                              return "Please enter valid password";
                                            } else {
                                              return null;
                                            }
                                          },
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
                              Container(
                                height: 50.h,
                                margin: EdgeInsets.symmetric(vertical: 10.h),
                                decoration: BoxDecoration(
                                  color: Color(0xFF1492E5),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: RaisedButton(
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                              content: Text('Processing Data')));
                                    }
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              DashBoardMobileComponent()),
                                      ModalRoute.withName('/'),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFE5D2FF),
                                            Color(0xffFFFFFF)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 400.w, minHeight: 50.h),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SIGN IN",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xff36195C),
                                            fontSize: textSize14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Row(
                                      children: <Widget>[
                                        Theme(
                                          child: Checkbox(
                                            value: _rememberMeFlag,
                                            onChanged: (value) => setState(() {
                                              _rememberMeFlag = !_rememberMeFlag;
                                            }),
                                          ),
                                          data: ThemeData(
                                            primarySwatch: Colors.blue,
                                            unselectedWidgetColor: Colors.white, // Your color
                                          ),
                                        ),
                                        // Checkbox(
                                        //   value: _rememberMeFlag,
                                        //   onChanged: (value) => setState(() {
                                        //     _rememberMeFlag = !_rememberMeFlag;
                                        //   }),
                                        // ),
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
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  ForgotMobileComponent()));
                                    },
                                    child: Text(
                                      "Forgot password",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ),
                                ],
                              ),
                              // RichText(
                              //   text: TextSpan(
                              //     children: [
                              //       TextSpan(
                              //         text: "Or sign in with",
                              //         style: TextStyle(
                              //             color: Colors.white70, fontSize: textSize14.sp),
                              //       ),
                              //     ],
                              //   ),
                              // ),

                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //   children: [
                              //     RaisedButton(
                              //       color: Color(0xFFB67DFF),
                              //       padding: EdgeInsets.only(
                              //           left: 50, right: 50, top: 15, bottom: 15),
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.circular(20)),
                              //       onPressed: () {},
                              //       child: Icon(FontAwesome.google, color: Colors.white),
                              //     ),
                              //     RaisedButton(
                              //       color: Color(0xFFB67DFF),
                              //       padding: EdgeInsets.only(
                              //           left: 50, right: 50, top: 15, bottom: 15),
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.circular(20)),
                              //       onPressed: () {},
                              //       child: Icon(FontAwesome.facebook, color: Colors.white),
                              //     )
                              //   ],
                              // )
                            ],
                          ),

                          /// Register screen
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 28),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Color(0xFF461584),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Color(0xFF7939CB))),
                                child: Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: TextFormField(
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
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Please enter your name";
                                        } else if (value.length < 6) {
                                          return "Please enter valid name";
                                        } else {
                                          return null;
                                        }
                                      },

                                      // onSaved: (val) => _password = val,
                                      // obscureText: _obscureText,
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50.h,
                                margin: EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xFF461584),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Color(0xFF7939CB))),
                                child: Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: TextFormField(
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
                                      validator: (val) =>
                                      val.isEmpty || !val.contains("@")
                                          ? "Please enter your email"
                                          : null,

                                      // onSaved: (val) => _password = val,
                                      // obscureText: _obscureText,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 54.h,
                                margin: EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                    color: Color(0xFF461584),
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Color(0xFF7939CB))),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.h, bottom: 3.h, left: 20.w),
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
                                                      _obscureText
                                                          ? "Show"
                                                          : "Hide",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xFF1492E5))))),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter your password";
                                            } else if (value.length < 6) {
                                              return "Please enter valid password";
                                            } else {
                                              return null;
                                            }
                                          },
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
                                height: 17.h,
                              ),
                              Text(
                                'By top Sign Up button you accept\nterms and privacy this app',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: textSize13),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                height: 50.h,
                                margin: EdgeInsets.only(top: 15.h, bottom: 35),
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
                                              OnBoardingScreen()),
                                      ModalRoute.withName('/'),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFE5D2FF),
                                            Color(0xffFFFFFF)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 400.w, minHeight: 50.h),
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
                              Text(
                                "App version 1.0",
                                style: TextStyle(
                                  color: Colors.white24,
                                ),
                              )
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
        ),
      ),
    );
  }
}
