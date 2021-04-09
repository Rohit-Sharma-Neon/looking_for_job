import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/main/companies_screen/companies_screen.dart';
import 'package:lookingforjob_flutter/ui/main/employer_dashboard/employer_dashboard.dart';
import 'package:lookingforjob_flutter/ui/main/expiredjobs_screen/expiredjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/favoriteusers_screen/favoriteusers_screen.dart';
import 'package:lookingforjob_flutter/ui/main/hiddenjobs_screen/hiddenjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:lookingforjob_flutter/ui/main/membershipplan_screen/membershipplan_screen.dart';
import 'package:lookingforjob_flutter/ui/main/mycompanies_screen/mycompanies_screen.dart';
import 'package:lookingforjob_flutter/ui/main/myjobs_screen/myjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/pendingjobs_screen/pendingjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/post_job.dart/components/post_job_mobile.dart';
import 'package:lookingforjob_flutter/ui/main/profilepublicview_screen/profilepublicview_screen.dart';
import 'package:lookingforjob_flutter/ui/main/resubmitjobs_screen/resubmitjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/transaction_screen/transaction_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => JobDescription(),
  // OnBoardings
  '/signIn1': (context) => LoginPage(),
  // '/login_dialogbox': (context) => LoginDialogBox()'/register_page': (context) => RegisterPage(),

  '/dashboard_screen': (context) => DashBoardScreen(),
  '/profilepublicview_screen': (context) => ProfilePublicView(),
  '/membershipplan_screen': (context) => MembershipPlanScreen(),
  '/mycompanies_screen': (context) => MyCompaniesScreen(),
  '/myjobs_screen': (context) => MyJobsScreen(),
  '/pendingjobs_screen': (context) => PendingJobScreen(),
  '/hiddenjobs_screen': (context) => HiddenJobScreen(),
  '/expiredjobs_screen_screen': (context) => ExpiredJobsScreen(),
  '/resubmitjobss_screen': (context) => ResubmitJobsScreen(),
  '/favoriteusers_screen': (context) => FavoriteUserScreen(),
  '/transaction_screen': (context) => TransactionScreen(),
  '/postajob_screen': (context) => PostJobMobileComponent(),


  '/register_page': (context) => RegisterPage(),
  '/forgot_password': (context) => ForgotPassword(),
  '/job_description': (context) => JobDescription(),
  '/employer_dahboard': (context) => EmployerDashboard(),
  '/companies_screen': (context) => CompaniesScreen(),



};
