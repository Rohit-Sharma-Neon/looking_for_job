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
    padding: EdgeInsets.symmetric(horizontal: 10.w),
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
            SizedBox(
              height: 5.h,
            )
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
      spreadRadius: 3,
      blurRadius: 3,
      offset: Offset(0, -10),
    );
  }

  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    padding: EdgeInsets.all(12.r),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              flex: 4,
              child: Text(
                "Flutter Devloper",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: textSize18.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 2,
              child: CircleAvatar(
                radius: 30.h,
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/lookingforjob_bg.png",
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey[600],
              size: 20.h,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              "Jaipur",
              style:
                  TextStyle(fontSize: textSize14.sp, color: Colors.grey[600]),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            Icon(
              Icons.attach_money_rounded,
              color: Colors.grey[600],
              size: 20.h,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text("20,000-30,000 permonth",
                style: TextStyle(
                    fontSize: textSize14.sp, color: Colors.grey[600])),
          ],
        ),
      ],
    ),
  );
}
