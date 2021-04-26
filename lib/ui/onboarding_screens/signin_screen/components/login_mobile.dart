import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_employer_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';

class LoginMobileComponent extends StatefulWidget {
  @override
  _LoginMobileComponentState createState() => _LoginMobileComponentState();
}

class _LoginMobileComponentState extends State<LoginMobileComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          Image.asset(
            appLogoWithName,
            height: 50.h,
          ),
          Spacer(flex: 2),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: scaffoldHorizontalPadding.w,
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
                    "Welcome Back!",
                    style: TextStyle(
                        fontSize: textSize26.sp,
                        fontWeight: FontWeight
                            .bold), //Theme.of(context).textTheme.headline1
                  ),
                  CustomTextFormField(
                    labelText: "Username / Email Address",
                    topMargin: 10.h,
                    icons: Icons.account_circle,
                  ),
                  CustomTextFormField(
                    labelText: "Password",
                    topMargin: 10.h,
                    icons: Icons.lock,
                  ),
                  SizedBox(height: 20.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                              color: lightSecondaryColor,
                              fontSize: textSize14.sp),
                        ),
                        TextSpan(
                          text: " Sign Up Now!",
                          style: TextStyle(
                            fontSize: textSize14.sp,
                            color: primaryColorLight,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterPage(),
                                ),
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
                      style: TextStyle(
                          color: primaryColorLight, fontSize: textSize14.sp),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ForgotPassword(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    },
                  ),
                  SizedBox(height: 15.h),
                  PrimaryButton(
                    text: login,
                    height: primaryButtonHeight,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ProfileEmployerScreen(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Spacer(flex: 5),
        ],
      ),
    );
  }
}
