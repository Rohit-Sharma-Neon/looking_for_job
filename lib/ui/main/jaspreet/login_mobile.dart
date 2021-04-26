import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';

class LoginMobileScreen extends StatefulWidget {
  @override
  _LoginMobileScreenState createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
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
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 65.h),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("signinbg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                appLogoWithName,
                height: 180.h,
                width: 250.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSignupScreen = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontSize: 16.nsp,
                              fontWeight: FontWeight.bold,
                              color: !isSignupScreen
                                  ? Color(0xFF8456BF)
                                  : Color(0xFFFFFFFF)),
                        ),
                        if (!isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 5.h),
                            height: 2,
                            width: 55,
                            color: Color(0xFF1492E5),
                          ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSignupScreen = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 16.nsp,
                              fontWeight: FontWeight.bold,
                              color: isSignupScreen
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF8456BF)),
                        ),
                        if (isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 5.h),
                            height: 2,
                            width: 55,
                            color: Color(0xFF1492E5),
                          ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 50.h,
                margin: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                  color: Color(0xFF461584),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xFF7939CB),
                  ),
                ),
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
                  color: Color(0xFF461584),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(
                      0xFF7939CB,
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 5.h, bottom: 3.h, left: 20.w),
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
                                _obscureText ? "Show" : "Hide",
                              ),
                            ),
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
                        "SIGN IN",
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
              SizedBox(height: 20.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Or connect using",
                      style: TextStyle(
                          color: Colors.white70, fontSize: textSize14.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    color: Color(0xFFB67DFF),
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 20, bottom: 20),
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Icon(FontAwesome.google, color: Colors.white),
                  ),
                  RaisedButton(
                    color: Color(0xFFB67DFF),
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 20, bottom: 20),
                    shape: StadiumBorder(),
                    onPressed: () {},
                    child: Icon(FontAwesome.facebook, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
