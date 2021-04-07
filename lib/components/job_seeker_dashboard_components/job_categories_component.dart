import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    padding: EdgeInsets.only(top: 60.h,bottom: 20.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          jobCategories,
          style: TextStyle(fontSize: 24.nsp),
        ),
        SizedBox(
          height: 10.h,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: jobsList.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.4,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: scaffoldHorizontalPadding+10.w),
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
            );
          },
        ),
      ],
    ),
  );
}
