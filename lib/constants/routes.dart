import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/ui/main/addnewexperience/addnewexperience.dart';
import 'package:lookingforjob_flutter/ui/main/ankit/application_screen.dart';
import 'package:lookingforjob_flutter/ui/main/appliedjob_screen/appliedjob_screen.dart';
import 'package:lookingforjob_flutter/ui/main/browsejob_screen/browsejob_screen.dart';
import 'package:lookingforjob_flutter/ui/main/contact_us/feedback.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/main/companies_screen/companies_screen.dart';
import 'package:lookingforjob_flutter/ui/main/expiredjobs_screen/expiredjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/faq_screen/faq_screen.dart';
import 'package:lookingforjob_flutter/ui/main/favoritejobscreen/favoritejobscreen.dart';
import 'package:lookingforjob_flutter/ui/main/favoriteusers_screen/favoriteusers_screen.dart';
import 'package:lookingforjob_flutter/ui/main/hiddenjobs_screen/hiddenjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/home_screen/home_screen.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:lookingforjob_flutter/ui/main/jobalert_screen/jobalert_screen.dart';
import 'package:lookingforjob_flutter/ui/main/kunal/subcategories.dart';
import 'package:lookingforjob_flutter/ui/main/membershipplan_screen/membershipplan_screen.dart';
import 'package:lookingforjob_flutter/ui/main/my_resume/add_new_resume.dart';
import 'package:lookingforjob_flutter/ui/main/my_resume/my_resume_screen.dart';
import 'package:lookingforjob_flutter/ui/main/mycompanies_screen/mycompanies_screen.dart';
import 'package:lookingforjob_flutter/ui/main/myexperience_screen/myexperience_screen.dart';
import 'package:lookingforjob_flutter/ui/main/myjobs_screen/myjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/onboarding_screen/onboarding_screen.dart';
import 'package:lookingforjob_flutter/ui/main/pendingjobs_screen/pendingjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/post_job.dart/components/post_job_mobile.dart';
import 'package:lookingforjob_flutter/ui/main/postajob/post_job_category.dart';
import 'package:lookingforjob_flutter/ui/main/postajob/post_job_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profile/employer_profile_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_employer_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profilepublicview_screen/profilepublicview_screen.dart';
import 'package:lookingforjob_flutter/ui/main/resubmitjobs_screen/resubmitjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/splashscreen/splash_screen.dart';
import 'package:lookingforjob_flutter/ui/main/transaction_screen/transaction_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/components/forgot_mobile.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/register_screen/register_page.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/components/login_mobile.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

var customRoutes = <String, WidgetBuilder>{

  // OnBoardings
  '/': (context) => SplashScreen(),
  // Sprint 1
  '/splash_screen': (context) => SplashScreen(),
  '/loginPage': (context) => LoginPage(),
  '/profile_seeker_screen': (context) => ProfileSeekerScreen(),
  '/home_screen': (context) => HomeScreen(),
  '/forgotScreen': (context) => ForgotMobileComponent(),
  '/subCategoriesScreen': (context) => SubCategoriesScreen(),

  // Sprint 2
  // Sprint 3
  // Sprint 4


  '/job_description': (context) => JobDescription(),
  '/pendingJobScreen': (context) => PendingJobScreen(),
  '/login_screen': (context) => LoginPage(),
  '/register_page': (context) => RegisterPage(),
  '/companies_screen': (context) => CompaniesScreen(),

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
  '/faq_screen': (context) => FaqScreen(),
  '/browsejob_screen': (context) => BrowseJobScreen(),

  '/register_page': (context) => RegisterPage(),
  '/forgot_password': (context) => ForgotPassword(),
  '/job_description': (context) => JobDescription(),
  '/employer_dahboard': (context) => ProfileSeekerScreen(),
  '/companies_screen': (context) => CompaniesScreen(),
  '/my_resume_screen': (context) => MyResumeScreen(),
  '/add_new_resume': (context) => AddNewResume(),
  '/feedback': (context) => FeedbackScreen(),
  '/onboarding_screen': (context) => JobTypeScreen(),
  // '/subcategories': (context) => SubCategoriesScreen(),


  //job seeker Screens
  '/favoritejob_screen': (context) => FavoriteJobScreen(),
  '/myexperience_screen': (context) => MyExperienceScreen(),
  '/addnewexperience_screen': (context) => AddNewExperience(),
  '/appliedjob_screen': (context) => AppliedJobScreen(),
  '/jobalert_screen': (context) => JobAlertScreen(),
  '/stepper_page': (context) => StepperPage(),
  '/ExpansionTile_Example': (context) => ExpansionTileExample(),
  // '/IconStepperDemo': (context) => IconStepperDemo(),

};
