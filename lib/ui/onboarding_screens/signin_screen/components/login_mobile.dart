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
      length: 3,
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            // padding: EdgeInsets.symmetric(vertical: 80,horizontal: 28),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(signinbg),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  SizedBox(height: 35.h),
                  SizedBox(
                    height: 80.h,
                    child: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                       bottom: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.transparent, borderRadius: BorderRadius.circular(20)
                        ),
                        indicatorWeight: 1,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Colors.deepPurple[400],
                        labelColor: Colors.white,
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        labelStyle: TextStyle(
                          fontSize: textSize18,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(
                            text: "Sign in",
                          ),
                          Tab(
                            text: "Register",
                          ),
                         SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 450.h,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // first tab bar view widget
                        /// Login screen
                        Column(
                          children: [
                            SizedBox(height: 15.h),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: Color(0xFF461584),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0),),
                                ),

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
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Color(0xFF461584),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0),),
                                  ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                                suffixIcon: FlatButton(
                                            padding: EdgeInsets.only(left: 20),
                                            onPressed: _toggle,
                                            child:  Text(
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
                            Container(
                              height: 50.h,
                              margin: EdgeInsets.only(top: 30.h),
                              decoration: BoxDecoration(
                                color: Color(0xFF1492E5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {

                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            DashBoardMobileComponent()),
                                    ModalRoute.withName('/'),
                                  ); }
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
                            SizedBox(height: 15.h),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: Color(0xFF461584),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0),),
                                ),
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
                            SizedBox(height: 8.h),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: Color(0xFF461584),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15.0),),
                                ),

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
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: Color(0xFF461584),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0),),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                  suffixIcon: FlatButton(
                                      padding: EdgeInsets.only(left: 20),
                                      onPressed: _toggle,
                                      child:  Text(
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
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'By top Sign Up button you accept\nterms and privacy this app',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: textSize13),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 50.h,
                              margin: EdgeInsets.only(top: 15.h, bottom: 60),
                              decoration: BoxDecoration(
                                color: Color(0xFF1492E5),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  if (_formKey.currentState.validate()){
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            OnBoardingScreen()),
                                    ModalRoute.withName('/'),
                                  );}
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
                                          fontSize: textSize14,
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
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
