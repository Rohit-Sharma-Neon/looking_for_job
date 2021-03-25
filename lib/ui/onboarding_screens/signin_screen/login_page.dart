import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/components/login_desktop.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/components/login_mobile.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: LoginDesktopComponent(),
          mobile: LoginMobileComponent(),
          tablet: Container(),
        ),
      ),
    );
  }
}
