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
        SizedBox(
          height: 70.h,
        ),
        Text(
          "Latest Jobs",
          style: TextStyle(
            fontSize: 26.nsp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        RichText(
          text: TextSpan(
            text: "Browse All Jobs  ",
            style: TextStyle(
              color: Color(0xff198EE1),
              fontSize: 16.nsp,
            ),
            children: [
              WidgetSpan(
                child: Icon(
                  Icons.arrow_forward,
                  color: Color(
                    0xff198EE1,
                  ),
                  size: 20.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        ListView.builder(
          itemCount: 5,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => Navigator.pushNamed(context, '/job_description'),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
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
                            style:
                                TextStyle(color: Colors.blue, fontSize: 20.nsp),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        OutlineButton(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                color: Colors.blue, fontSize: 16.nsp),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Icon(Icons.add_location,color: Colors.grey[600],),
                    //     Text(
                    //       "Anand International College of Engineering",style: TextStyle(color: Colors.grey[600],fontSize: 16.nsp),
                    //     ),

                    //   ],
                    // ),
                    SizedBox(height: 7.h,),
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.add_location,
                            color: Colors.grey[600],
                            size: 20.h,
                          ),
                        ),
                        TextSpan(
                          text: "Anand International College of Engineering",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.nsp,
                          ),
                        )
                      ]),
                    ),
                    SizedBox(height: 7.h,),
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.add_location,
                            color: Colors.grey[600],
                            size: 20.h,
                          ),
                        ),
                        TextSpan(
                          text: "Jaipur",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18.nsp,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 30.h,
        )
      ],
    ),
  );
}
