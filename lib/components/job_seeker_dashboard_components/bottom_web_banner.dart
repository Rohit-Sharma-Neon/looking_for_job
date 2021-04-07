import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bottomWebBanner() {
  List<Widget> myAccount = [
    Text(
      "My Account",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "Login",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "Register",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ];

  List<Widget> helpfulLinks = [
    Text(
      "Helpful Links",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "FAQ",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "Feedback",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "Contact",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ];

  List<Widget> informationList = [
    Text(
      "Information",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      "Privacy Policy",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ];

  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 20.h),
    color: Color(0xff303030),
    child: Responsive(
      mobile: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              appLogoWithName,
              height: 40,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Our Aim is to Serve All Kinds of Jobs in Corporate Industries and the IT sector and all Business and Job Seekers are to easily find their deserve Platform.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: myAccount,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: helpfulLinks,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: informationList,
            ),
          ],
        ),
      ),
      tablet: Container(),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                appLogoWithName,
                height: 40,
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 350,
                child: Text(
                  "Our Aim is to Serve All Kinds of Jobs in Corporate Industries and the IT sector and all Business and Job Seekers are to easily find their deserve Platform.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(flex: 3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: myAccount,
          ),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: helpfulLinks,
          ),
          Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: informationList,
          ),
          Spacer(flex: 1),
        ],
      ),
    ),
  );
}
