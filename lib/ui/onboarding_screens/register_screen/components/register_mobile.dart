// import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
// import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        margin: EdgeInsets.symmetric(
          horizontal: scaffoldHorizontalPadding.w,
          vertical: scaffoldHorizontalPadding.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(cornersRadiusLight),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's create your account!",
                style: TextStyle(
                    fontSize: textSize26.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.h),
              CustomRadioButton(
                defaultSelected: "Job Seeker",
                width: 140.w,
                height: 40.h,
                elevation: 0,
                absoluteZeroSpacing: true,
                unSelectedBorderColor: Colors.transparent,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  'Job Seeker',
                  'Employer',
                ],
                buttonValues: [
                  'Job Seeker',
                  'Employer',
                ],
                buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: TextStyle(fontSize: textSize16.sp),
                ),
                radioButtonValue: (value) {
                  if (value == "Employer") {
                    isEmployer = true;
                  } else {
                    isEmployer = false;
                  }
                },
                selectedColor: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  labelText: 'Full Name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  labelText: 'Username',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Email Address',
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        color: Color(0xFF424242),
                        fontSize: textSize14.sp,
                      ),
                    ),
                    TextSpan(
                      text: " Log In!",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Color(0xFF0691CE),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => LoginPage()),
                            ModalRoute.withName('/'),
                          );
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              LabeledCheckbox(
                label:
                    "By clicking on “Register” button you are agree to ourTerms & Condition",
                value: checkedValue,
                onTap: (newValue) {
                  setState(() {
                    checkedValue = newValue;
                  });
                },
                gap: 0,
                fontSize: textSize13.sp,
              ),
              SizedBox(height: 20.h),
              MyButton(
                text: "Register",
                height: primaryButtonHeight.h,
                width: double.infinity,
                onPressed: () {
                  isEmployer
                      ? Navigator.pushNamedAndRemoveUntil(
                          context, '/employer_dahboard', (route) => false)
                      : Navigator.pushNamedAndRemoveUntil(
                          context, '/dashboard_screen', (route) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
