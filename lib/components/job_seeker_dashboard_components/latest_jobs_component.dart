import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/theme/oulined_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';

Widget latestJobsComponent() {
  return ListView.builder(
    padding: EdgeInsets.only(top: 2,bottom: 10,left: 5,right: 5),
    itemCount: 5,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/job_description');
        },
        child: Column(
          children: [
            SizedBox(height: 2),
            OpenContainer(
              transitionType: ContainerTransitionType.fade,
              transitionDuration: const Duration(milliseconds: 600),
              closedBuilder: (context, action) {
                return jobCard();
              },
              middleColor: Colors.red,
              closedColor: Colors.white,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              openBuilder: (BuildContext context,
                  void Function({Object returnValue}) action) {
                return JobDescription();
              },
            ),
          ],
        ),
      );
    },
  );
}

Widget jobCard() {
  BoxShadow _boxShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 3,
      offset: Offset(0, -10),
    );
  }

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 12.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter Devloper",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: textSize16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "AppiTron Solutions pvt ltd.",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: textSize12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50.w,
            ),
            Expanded(
              flex: 2,
              child: CircleAvatar(
                radius: 30.h,
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/lookingforjob_bg.png",
                  height: 40.h,
                ),
              ),
            ),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey[800],
              size: 15.h,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              "Jaipur, Rajasthan",
              style:
                  TextStyle(fontSize: textSize12.sp, color: Colors.grey[600]),
            ),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Icon(
              Icons.attach_money_rounded,
              color: Colors.grey[800],
              size: 15.h,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text("20,000-30,000 permonth",
                style: TextStyle(
                    fontSize: textSize12.sp, color: Colors.grey[600])),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Icon(
              Icons.person_add_alt_1,
              color: Colors.grey[800],
              size: 15.h,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              "Hiring multiple candidates",
              style:
              TextStyle(fontSize: textSize12.sp, color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    ),
  );
}
