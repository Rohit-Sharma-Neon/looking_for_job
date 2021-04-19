import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

class BaseDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: primaryDarkColor,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   color: Color(0xff262626),
                //   alignment: Alignment.center,
                //   width: double.infinity,
                //   height: 40.h,
                //   child: Text(
                //     menu,
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.w400,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(10.r),
                  width: double.infinity,
                  height: 150.h,
                  color: Colors.grey.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 35.r,
                        backgroundImage: AssetImage(profilePlaceholder),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Rohit Sharma",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Text(
                        "View profile",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                drawerItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerList {
  static List<String> drawerData = [
    browseJobs,
    companies,
    dashboard,
    myCompanies,
    myJobs,
    pendingJobs,
    membership,
    transactions,
    myResumes,
    appliedJobs,
    favouriteJobs,
    jobAlert,
    logout,
    postAJob
  ];
}

Widget drawerItem() {
  return ListView.separated(
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: DrawerList.drawerData.length,
    itemBuilder: (context, index) {
      return ListTile(
        contentPadding: EdgeInsets.only(left: 15.w),
        // dense: true,
        onTap: () {
          switch (index) {
            case 0:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/browsejob_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 1:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/companies_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 2:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/employer_dahboard',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 3:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/mycompanies_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 4:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/myjobs_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 5:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/pendingjobs_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 6:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/membershipplan_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 7:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/transaction_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 8:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/my_resume_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 9:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/appliedjob_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 10:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/favoritejob_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 11:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/jobalert_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 12:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/signIn1',
                  (Route<dynamic> route) => false,
                );
                break;
              }
            case 13:
              {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/postajob_screen',
                  (Route<dynamic> route) => false,
                );
                break;
              }
          }
        },
        title: Text(
          DrawerList.drawerData[index],
          style: TextStyle(),
        ),
      );
    },
    separatorBuilder: (context, index) {
      return Divider(
        height: 0,
        color: Colors.grey.shade600,
      );
    },
  );
}
