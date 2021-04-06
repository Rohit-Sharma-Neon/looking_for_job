import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  return ListView.builder(
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
  );
}
