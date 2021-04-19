import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'package:lookingforjob_flutter/ui/main/expiredjobs_screen/expiredjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/favoriteusers_screen/favoriteusers_screen.dart';
import 'package:lookingforjob_flutter/ui/main/hiddenjobs_screen/hiddenjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/membershipplan_screen/membershipplan_screen.dart';
import 'package:lookingforjob_flutter/ui/main/mycompanies_screen/mycompanies_screen.dart';
import 'package:lookingforjob_flutter/ui/main/myjobs_screen/myjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/pendingjobs_screen/pendingjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profilepublicview_screen/profilepublicview_screen.dart';
import 'package:lookingforjob_flutter/ui/main/resubmitjobs_screen/resubmitjobs_screen.dart';
import 'package:lookingforjob_flutter/ui/main/transaction_screen/transaction_screen.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

class DashBoardNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50.h),
        padding: EdgeInsets.all(12.h),
        primary: Color(0xFF333333),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(cornersRadiusHeavy.r),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          context: context,
          builder: (context) => Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Divider(
                    //   height: 10.h,
                    //   color: Colors.grey.shade300,
                    //   thickness: 3,
                    //   indent: 80.w,
                    //   endIndent: 80.w,
                    // ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      myAccount,
                      style: TextStyle(
                          color: Color(0xFF0691CE), fontSize: textSize16.sp),
                    ),
                    CustomListTile(
                        leadingIcon: Icons.dashboard,
                        title: dashboard,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoardScreen()),
                          );
                        }),
                    CustomListTile(
                      leadingIcon: Icons.person_pin_circle_rounded,
                      title: profilePublicView,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePublicView()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.card_membership,
                      title: membership,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MembershipPlanScreen()),
                          );
                        }
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      myJobs,
                      style: TextStyle(
                          color: Color(0xFF0691CE), fontSize: textSize16.sp),
                    ),
                    CustomListTile(
                      leadingIcon: Icons.roofing,
                      title: myCompanies,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyCompaniesScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.shopping_bag_outlined,
                      title: myJobs,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyJobsScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.access_time,
                      title: pendingJobs,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PendingJobScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.tv_off_rounded,
                      title: hiddenJobs,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HiddenJobScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.error,
                      title: expiredJobs,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExpiredJobsScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.assistant_direction,
                      title: resubmittedJobs,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResubmitJobsScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.favorite,
                      title: favoriteUsers,
                      trailingIcon: Icons.attractions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavoriteUserScreen()),
                          );
                        }
                    ),
                    Text(
                      account,
                      style: TextStyle(
                          color: Color(0xFF0691CE), fontSize: textSize16.sp),
                    ),
                    CustomListTile(
                      leadingIcon: Icons.receipt,
                      title: transactions,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionScreen()),
                          );
                        }
                    ),
                    CustomListTile(
                      leadingIcon: Icons.logout,
                      title: logout,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        }
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: Image(
                  height: 15,
                  width: 20.w,
                  image: AssetImage('assets/images/menu.png'),
                )),
            WidgetSpan(child: SizedBox(width: 15.w)),
            TextSpan(
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
              text: dashboardNavigation,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData leadingIcon, trailingIcon;
  final String title;
  final Function onTap;

  const CustomListTile(
      {@required this.leadingIcon,
      @required this.title,
      this.trailingIcon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      leading: Icon(leadingIcon),
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(fontSize: textSize14.sp),
      ),
      trailing: Icon(
        trailingIcon,
        color: Color(0xff198EDC),
      ),
    );
  }
}
