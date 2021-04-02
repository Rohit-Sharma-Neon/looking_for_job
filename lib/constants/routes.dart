import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => DashBoardScreen(),
  // OnBoardings
  '/signIn1': (context) => LoginPage(),
  // '/login_dialogbox': (context) => LoginDialogBox(),
  '/register_page': (context) => RegisterPage(),
  '/forgot_password': (context) => ForgotPassword(),
  '/dashboard_screen': (context) => DashBoardScreen(),
  '/job_description': (context) => JobDescription(),
};
