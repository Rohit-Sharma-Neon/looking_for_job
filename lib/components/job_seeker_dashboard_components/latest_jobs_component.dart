import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';

Widget latestJobsComponent() {
  return Container(
    alignment: Alignment.topLeft,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: scaffoldHorizontalPadding),
    margin: EdgeInsets.only(top: 20.h),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Latest Jobs",
          style: TextStyle(
            fontSize: 26.nsp,
          ),
        ),
        RichText(
          text: TextSpan(
            text: "Browse All Jobs",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.nsp,
            ),
            children: [
              WidgetSpan(
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        ListView.builder(
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => Navigator.pushNamed(context, '/job_description'),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Sports Officer cum Warden",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: OutlineButton(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Full Time",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_location),
                        Text(
                          "Anand International College of Engineering",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_location),
                        Text("Jaipur"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
