import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobDescription extends StatefulWidget {
  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  final TextEditingController _typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              height: 220.h,
              width: 400.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "iOS Developer (Fresher can apply)",
                            style: TextStyle(
                              fontSize: 26.nsp,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Home",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.nsp,
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(Icons.arrow_right_outlined),
                            ),
                            TextSpan(
                              text: "Information Technology",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.nsp,
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(Icons.arrow_right_outlined),
                            ),
                            TextSpan(
                              text: "Software Developers, Applications",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.nsp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.w, vertical: 10.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Color(0xFF0691CE),
                        textColor: Color(0xFFffffff),
                        child: Text("Apply Now"),
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {
                          //   _formKey.currentState.save();
                          // }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  width: 400.w,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Overview",
                              style: TextStyle(
                                fontSize: 26.nsp,
                                color: Colors.black,
                              )),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Location",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("Ahemdabad, Gujrat",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job Type",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("Full Time",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Salary",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("12,000 ₹ - 20,000 ₹ Per Month",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date Posted",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("9 days ago",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Additional Details",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job ID",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("35",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on, size: 22),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job Views",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("97",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job Description",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "AP-GROUP is hiring iOS developers with\nupto 1 years of experience. What do we\nneed? Check below:",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "- Skills & knowledgeable candidate.\n- Join Immediate bases..",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Text("Why you should choose AP-GROUP?",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "- 5 Days Working.\n- Big & enterprise projects to work.\n- Increase & develop your skills 100%\n  with advanced technology & concepts.\n- Free work environment, productive and\n  quality.\n- Always motivate for good work.\n- Great allowances for the right\n  candidates.",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "To know more share your latest CV on\n the jobs.apgroup@@gmail.com &\n careers@ap-group.in",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 30.h),
                                  Text("Tags",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 20.h),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 25.h,
                                          width: 130.w,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEFF7FD),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Text(" #iOSDeveloper",
                                              style: TextStyle(
                                                fontSize: 18.nsp,
                                                color: Color(0xFF0691CE),
                                              )),
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 25.h,
                                          width: 90.w,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEFF7FD),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Text(" #iOSJobs",
                                              style: TextStyle(
                                                fontSize: 18.nsp,
                                                color: Color(0xFF0691CE),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 30.h),
                                  Text("Locations",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 10.h),
                                  Text("Map here...",
                                      style: TextStyle(
                                        fontSize: 14.nsp,
                                        color: Colors.black,
                                      )),

                                  SizedBox(height: 30.h),
                                  Container(
                                    height: 35.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF7FD),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Company Details",
                                          style: TextStyle(
                                            fontSize: 24.nsp,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ),

                                  Container(
                                    height: 200.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("AP-GROUP",
                                            style: TextStyle(
                                              fontSize: 24.nsp,
                                              color: Colors.black,
                                            )),
                                        SizedBox(height: 10.h),
                                        RaisedButton(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 100.w,
                                              vertical: 10.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          color: Color(0xFF0691CE),
                                          textColor: Color(0xFFffffff),
                                          child: Text("Apply Now"),
                                          onPressed: () {},
                                        ),
                                        RaisedButton(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 93.w, vertical: 10.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          color: Color(0xFF0691CE),
                                          textColor: Color(0xFFffffff),
                                          child: Text("Login to chat"),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 30.h),
                                  Text("Bookmark or Share",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 10.h),
                                  Wrap(
                                    spacing: 5,
                                    children: <Widget>[
                                      Container(
                                          color: Colors.blue,
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                              child: Text(
                                            "W1",
                                            textScaleFactor: 2.5,
                                          ))),
                                      Container(
                                          color: Colors.red,
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                              child: Text(
                                            "W2",
                                            textScaleFactor: 2.5,
                                          ))),
                                      Container(
                                          color: Colors.teal,
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                              child: Text(
                                            "W3",
                                            textScaleFactor: 2.5,
                                          ))),
                                      Container(
                                          color: Colors.indigo,
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                              child: Text(
                                            "W4",
                                            textScaleFactor: 2.5,
                                          ))),
                                      Container(
                                          color: Colors.orange,
                                          width: 40,
                                          height: 40,
                                          child: Center(
                                              child: Text(
                                            "W5",
                                            textScaleFactor: 2.5,
                                          ))),
                                    ],
                                  ),
                                  SizedBox(height: 30.h),

                                  Text("More Info",
                                      style: TextStyle(
                                        fontSize: 24.nsp,
                                        color: Colors.black,
                                      )),

                                  Text("More Info Details...",
                                      style: TextStyle(
                                        fontSize: 16.nsp,
                                        color: Colors.black,
                                      )),

                                  // ListTile(
                                  //   leading: Icon(Icons.location_on),
                                  //   title: Text("More jobs by AP-GROUP"),
                                  // ),

                                  SizedBox(height: 30.h),

                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF7FD),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("INTEL Company",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                                Text("Full Time",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            ),
                                            Text("Software Engineers",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 120.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("Bengaluru",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("12,000 ₹-25,000 ₹ Per Month",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("2 days ago",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 30.h),
                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF7FD),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Alethea Communications",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                                Text("Full Time",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            ),
                                            Text("Software Engineer(Junior & Senior)",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("Bengaluru",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),

                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("2 days ago",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 30.h),

                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF7FD),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Datacube Softech Pvt Ltd",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                                Text("Full Time",
                                                    style: TextStyle(
                                                      fontSize: 18.nsp,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            ),
                                            Text("Magento/WooCommerce Developer",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 120.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("Jaipur",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("15,000 ₹-45,000 ₹ Per Month",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text("5 days ag+",
                                                style: TextStyle(
                                                  fontSize: 18.nsp,
                                                  color: Colors.black,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
