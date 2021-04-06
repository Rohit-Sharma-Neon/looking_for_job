import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/ui/main/contact_us/account_screen.dart';
import 'package:lookingforjob_flutter/ui/main/contact_us/contact_us.dart';
import 'package:lookingforjob_flutter/ui/main/contact_us/feedback.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:lookingforjob_flutter/ui/main/post_job.dart/post_job_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';


var customRoutes = <String, WidgetBuilder>{
  '/': (context) => AcoountScreen(),
  // OnBoardings
  '/signIn1': (context) => ContactUsScreen(),
  // '/login_dialogbox': (context) => LoginDialogBox(),
  '/register_page': (context) => RegisterPage(),
  '/forgot_password': (context) => ForgotPassword(),
  '/dashboard_screen': (context) => DashBoardScreen(),
  '/job_description': (context) => JobDescription(),
  '/post_job': (context) => PostJobScreen(),
  '/contact_UsUser': (context) => ContactUsScreen(),
  '/feedback': (context) => FeedbackScreen(),
  '/account_screen': (context) => AcoountScreen(),



};
