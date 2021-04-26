import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';
import 'package:lookingforjob_flutter/widgets/label_check_box.dart';

class RegisterMobileComponent extends StatefulWidget {
  @override
  _RegisterMobileComponentState createState() =>
      _RegisterMobileComponentState();
}

class _RegisterMobileComponentState extends State<RegisterMobileComponent> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMeFlag = false, checkedValue = false;
  bool isEmployer = false;

  bool _obscureText = true;

  bool isSignupScreen = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 80.h),
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
                    height: 160.h,
                    width: 100.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('LOOKING FOR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize24, color: Color(0xFF1492E5)),),
                          Text(' JOB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize24, color: Color(0xFF19E39E)),),
                        ],
                      ),
                      Text('YOUR ONLY SOURCE FOR YOUR DREAM JOB', style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize10, color: Color(0xFFE5D2FF)),),
                    ],
                  )
                ],
              ),


              SizedBox(height: 30.h),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: <Widget>[
              //     GestureDetector(
              //       onTap: () => setState(() => _value = 0),
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 50.h,
              //         width: 135.w,
              //         decoration: BoxDecoration(
              //           color: _value == 0 ? Color(0xFF1492E5) : Colors.transparent,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //
              //         child: Text("Employer",style: TextStyle(fontWeight: FontWeight.bold)),
              //       ),
              //     ),
              //     SizedBox(width: 4),
              //     GestureDetector(
              //       onTap: () => setState(() => _value = 1),
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 50.h,
              //         width: 135.w,
              //         decoration: BoxDecoration(
              //           color: _value == 1 ? Color(0xFF1492E5) : Colors.transparent,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         child: Text("Job Seeker", style: TextStyle(fontWeight: FontWeight.bold)),
              //       ),
              //     ),
              //   ],
              // ),

              // CustomRadioButton(
              //   defaultSelected: "Job Seeker",
              //   width: 140.w,
              //   height: 40.h,
              //
              //   elevation: 0,
              //   absoluteZeroSpacing: true,
              //   unSelectedBorderColor: Colors.transparent,
              //   unSelectedColor: Theme.of(context).canvasColor,
              //   buttonLables: [
              //     'Job Seeker',
              //     'Employer',
              //   ],
              //   buttonValues: [
              //     'Job Seeker',
              //     'Employer',
              //   ],
              //   buttonTextStyle: ButtonTextStyle(
              //     selectedColor: Colors.white,
              //     unSelectedColor: Colors.black,
              //     textStyle: TextStyle(fontSize: textSize16.sp),
              //   ),
              //   radioButtonValue: (value) {
              //     if (value == "Employer") {
              //       isEmployer = true;
              //     } else {
              //       isEmployer = false;
              //     }
              //   },
              //   selectedColor: Theme.of(context).primaryColor,
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
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
                              color:  !isSignupScreen? Color(0xFF8456BF): Color(0xFFFFFFFF)),
                        ),
                        if(!isSignupScreen)
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
                    onTap: (){
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
                              color: isSignupScreen? Color(0xFFFFFFFF) : Color(0xFF8456BF)),
                        ),
                        if(isSignupScreen)
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
                height: 10.h,
              ),
              Text(
                'By top Sign Up button you accept terms and privacy this app',
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
              // Container(
              //             //   height: 40.h,
              //             //   margin: EdgeInsets.all(10),
              //             //   child: RaisedButton(
              //             //     onPressed: () {
              //             //       isEmployer
              //             //               ? Navigator.pushNamedAndRemoveUntil(
              //             //                   context, '/employer_dahboard', (route) => false)
              //             //               : Navigator.pushNamedAndRemoveUntil(
              //             //                   context, '/dashboard_screen', (route) => false);
              //             //     },
              //             //     shape: RoundedRectangleBorder(
              //             //         borderRadius: BorderRadius.circular(80.0)),
              //             //     padding: EdgeInsets.all(0.0),
              //             //     child: Ink(
              //             //       decoration: BoxDecoration(
              //             //           gradient: LinearGradient(
              //             //             colors: [Color(0xFF1492E5), Color(0xff64B6FF)],
              //             //             begin: Alignment.centerLeft,
              //             //             end: Alignment.centerRight,
              //             //           ),
              //             //           borderRadius: BorderRadius.circular(30.0)),
              //             //       child: Container(
              //             //         constraints:
              //             //         BoxConstraints(maxWidth: 150.w, minHeight: 50.0),
              //             //         alignment: Alignment.center,
              //             //         child: Text(
              //             //           "CREATE",
              //             //           textAlign: TextAlign.center,
              //             //           style: TextStyle(color: Colors.white, fontSize: textSize16),
              //             //         ),
              //             //       ),
              //             //     ),
              //             //   ),
              //             // ),
              // PrimaryButton(
              //   text: "Register",
              //   height: primaryButtonHeight.h,
              //   width: double.infinity,
              //   onPressed: () {
              //     isEmployer
              //         ? Navigator.pushNamedAndRemoveUntil(
              //             context, '/employer_dahboard', (route) => false)
              //         : Navigator.pushNamedAndRemoveUntil(
              //             context, '/dashboard_screen', (route) => false);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


