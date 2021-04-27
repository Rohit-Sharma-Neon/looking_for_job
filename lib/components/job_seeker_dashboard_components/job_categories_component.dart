import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

Widget jobCategoriesComponent() {
  List<String> jobsList = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  return Container(
    color: Color(0xffF9F9F9),
    padding: EdgeInsets.only(top: 25.h, bottom: 18.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          jobCategories,
          style: TextStyle(fontSize:textSize22),
        ),
        Divider(color: Colors.black,indent: 20,endIndent: 20,),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: jobsList.length,
          itemBuilder: (
              BuildContext context,
              int index,
              ) {
            return Column(children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: scaffoldHorizontalPadding + 10.w,
                ),
                visualDensity: VisualDensity(vertical: -2.w),
                onTap: () {},
                leading: Icon(Icons.opacity),
                title: Text(
                  jobsList[index],
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  color: primaryColorLight,
                  size: 25.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Divider(
                  color: Colors.grey[300],
                ),
              ),
            ]);
          },
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    ),
  );
}



