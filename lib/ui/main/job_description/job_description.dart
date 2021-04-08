import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';

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
          mainAxisSize: MainAxisSize.min,
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
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Home",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.nsp,
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
                                fontSize: 18.nsp,
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
                                fontSize: 18.nsp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
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
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.white,
                  width: 400.w,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                              Icon(
                                Icons.location_on,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Location",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("Ahemdabad, Gujrat",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.shop_outlined,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job Type",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("Full Time",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_balance,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Salary",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("12,000 ₹ - 20,000 ₹ Per Month",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.timer,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date Posted",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("9 days ago",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
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
                              Icon(
                                Icons.assignment_ind,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job ID",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("35",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.perm_identity,
                                size: 22,
                                color: Color(0xFF0691CE),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Job Views",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),
                                  Text("97",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Row(
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
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "- Skills & knowledgeable candidate.\n- Join Immediate bases..",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                  SizedBox(height: 20.h),
                                  Text("Why you should choose AP-GROUP?",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "- 5 Days Working.\n- Big & enterprise projects to work.\n- Increase & develop your skills 100%\n  with advanced technology & concepts.\n- Free work environment, productive and\n  quality.\n- Always motivate for good work.\n- Great allowances for the right\n  candidates.",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
                                      )),
                                  SizedBox(height: 20.h),
                                  Text(
                                      "To know more share your latest CV on\n the jobs.apgroup@@gmail.com &\n careers@ap-group.in",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Color(0xFF666666),
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
                                  Text("Location",
                                      style: TextStyle(
                                        fontSize: 26.nsp,
                                        color: Colors.black,
                                      )),
                                  SizedBox(height: 10.h),
                                  Text("Map here...",
                                      style: TextStyle(
                                        fontSize: 18.nsp,
                                        color: Colors.black,
                                      )),

                                  SizedBox(height: 30.h),
                                  Container(
                                    height: 40.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF7FD),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Container(
                                      height: 200.h,
                                      width: 320.w,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          new BoxShadow(
                                            color: Colors.black,
                                          ),
                                        ],
                                        color: Color(0xFFF9F9F9),
                                        // borderRadius: BorderRadius.only(
                                        //     topLeft: Radius.circular(10),
                                        //     topRight: Radius.circular(10)),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("Company Details",
                                          style: TextStyle(
                                            fontSize: 20.nsp,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ),

                                  Container(
                                    height: 180.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.only(
                                      //     bottomLeft: Radius.circular(5),
                                      //     bottomRight: Radius.circular(5)),
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

                                        MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          color: Color(0xFF0691CE),
                                          textColor: Color(0xFFffffff),
                                          child: Text("Apply Now"),
                                          onPressed: () {},

                                        ),

                                        MaterialButton(
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
                                    spacing: 2,
                                    children: <Widget>[
                                      IconButton(
                                        icon: Image.asset(whatsapplogo,height: 100.h),
                                        onPressed: () {},
                                      ),

                                      IconButton(
                                        icon: Image.asset(facebooklogo,height: 100.h),
                                        onPressed: () {},
                                      ),

                                      IconButton(
                                        icon: Image.asset(gmaillogos,height: 100.h),
                                        onPressed: () {},
                                      ),

                                      IconButton(
                                        icon: Image.asset(pinterestlogo,height: 100.h),
                                        onPressed: () {},
                                      ),

                                      IconButton(
                                        icon: Image.asset(twitterlogo,height: 100.h),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30.h),

                                  Text("More Info",
                                      style: TextStyle(
                                        fontSize: 24.nsp,
                                        color: Colors.black,
                                      )),

                                  SizedBox(height: 10.h),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.shop_outlined, size: 22, color: Color(0xFF0691CE)),
                                          SizedBox(width: 10.w),
                                          Text("More jobs by AP-GROUP",
                                              style: TextStyle(
                                                fontSize: 16.nsp,
                                                color: Colors.black,
                                              )
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Icon(Icons.perm_contact_cal_rounded, size: 22, color: Color(0xFF0691CE)),
                                          SizedBox(width: 10.w),
                                          Text("More jobs by Akash Panchal",
                                              style: TextStyle(
                                                fontSize: 16.nsp,
                                                color: Colors.black,
                                              )
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 10.h),
                                      Row(
                                        children: [
                                          Icon(Icons.error, size: 22, color: Color(0xFF0691CE),),
                                          SizedBox(width: 10.w),
                                          Text("Report this job",
                                              style: TextStyle(
                                                fontSize: 16.nsp,
                                                color: Colors.black,
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  // ListTile(
                                  //   trailing: Icon(Icons.account_balance,size: 5,),
                                  //   title: Text("More jobs by AP-GROUP"),
                                  // ),

                                  SizedBox(height: 30.h),
                                  SizedBox(
                                    width: 310.w,
                                    child: ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 5,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Container(
                                          padding:
                                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey.shade200)),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "Sports Officer cum Warden",
                                                    style: TextStyle(
                                                        color: Colors.blue, fontSize: 20),
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
                                                      style: TextStyle(color: Colors.blue),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                        );
                                      },
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
