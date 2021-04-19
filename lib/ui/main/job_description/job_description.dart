import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';

import '../../../constants/primary_button.dart';
import '../../../constants/sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/sizes.dart';
import '../../../widgets/base_app_bar.dart';

class JobDescription extends StatefulWidget {
  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  GoogleMapController mapController;
  Location _location = Location();

  static const LatLng _initialcameraposition =
  const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _location.onLocationChanged.listen((l) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
        ),
      );
    });
  }

  MapType _currentMapType = MapType.normal;
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
  final TextEditingController _typeAheadController = TextEditingController();
  BoxShadow _boxShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 3,
      blurRadius: 3,
      offset: Offset(0, 0),
    );
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            primary: primaryColorLight,
            minimumSize: Size(double.infinity, 40.h)),
        onPressed: () {},
        child: Text(
          "Apply Now",
          style: TextStyle(fontSize: textSize16.sp),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 3,
              expandedHeight: 225.0,
              floating: false,
              backgroundColor: Colors.teal[50],
              pinned: true,
              snap: false,
              leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.blue,),
              // centerTitle: true,
              // actions: [
              //   Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 2.w),
              //     child: RichText(
              //       text: TextSpan(children: [
              //         TextSpan(
              //           text: "iOS Developer\n(Fresher can apply)",
              //           style: TextStyle(
              //             fontSize: 20.sp,
              //             color: Colors.black,
              //           ),
              //         ),
              //       ]),
              //     ),
              //   ),
              //   SizedBox(height: 10.h),
              //   Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 5.w),
              //     child: RichText(
              //       text: TextSpan(
              //         children: [
              //           TextSpan(
              //             text: "Home",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 18.sp,
              //             ),
              //           ),
              //           WidgetSpan(
              //             alignment: PlaceholderAlignment.middle,
              //             child: Icon(Icons.arrow_right_outlined),
              //           ),
              //           TextSpan(
              //             text: "Information Technology",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 18.sp,
              //             ),
              //           ),
              //           WidgetSpan(
              //             alignment: PlaceholderAlignment.middle,
              //             child: Icon(Icons.arrow_right_outlined),
              //           ),
              //           TextSpan(
              //             text: "Software Developers, Applications",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 18.sp,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ],
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("iOS Developer (Fresher can apply)",
                    style: TextStyle(
                        fontSize: textSize18.sp,
                        color: Colors.black,
                      ),),

                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(appleIcon,height: 70.nsp,),
                      SizedBox(width: 50),
                      PrimaryButton(text: "Apply Now",),


                    ],
                  )

                ),
              ),
            ),

          ];
        },
        body: Stack(
          overflow: Overflow.visible,
          children: [
            // Container(
            //   height: height * 0.33,
            //   width: width,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(bgImage),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 0, right: 0, left: 0),
            //   child: Column(
            //     children: [
            //       // Row(
            //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       //   children: [
            //       //     InkWell(
            //       //       onTap: () {
            //       //         Navigator.of(context).push(MaterialPageRoute(
            //       //           builder: (context) => ProfileScreen(),
            //       //         ));
            //       //       },
            //       //       child: CircleAvatar(
            //       //         radius: 25.0,
            //       //         child: Text(
            //       //           dummyImageText,
            //       //           style: TextStyle(color: white, fontSize: 10),
            //       //         ),
            //       //         backgroundColor: primaryTextColor,
            //       //       ),
            //       //     ),
            //       //     InkWell(
            //       //       onTap: () {
            //       //         Navigator.of(context).push(MaterialPageRoute(
            //       //           builder: (context) => MenuScreen(),
            //       //         ));
            //       //       },
            //       //       child: Icon(
            //       //         Icons.menu,
            //       //         size: 30,
            //       //         color: white,
            //       //       ),
            //       //     ),
            //       //   ],
            //       // ),
            //       // Padding(
            //       //   padding: const EdgeInsets.only(top: 35),
            //       //   child: Align(
            //       //       alignment: Alignment.bottomLeft,
            //       //       child: Text(
            //       //         allCourse,
            //       //         style: TextStyle(
            //       //             fontSize: 36,
            //       //             color: white,
            //       //             fontWeight: FontWeight.w600),
            //       //       )),
            //       // ),
            //     ],
            //   ),
            // ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Container(
                    //   width: 400.w,
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //
                    //
                    //         SizedBox(height: 30.h),
                    //         // SizedBox(
                    //         //   width: double.infinity,
                    //         //    // child: RaisedButton(
                    //         //   //   padding: EdgeInsets.symmetric(
                    //         //   //       horizontal: 1.w, vertical: 10.h),
                    //         //   //   shape: RoundedRectangleBorder(
                    //         //   //     borderRadius: BorderRadius.circular(5.0),
                    //         //   //   ),
                    //         //   //   color: Color(0xFF0691CE),
                    //         //   //   textColor: Color(0xFFffffff),
                    //         //   //   child: Text("Apply Now"),
                    //         //   //   onPressed: () {},
                    //         //   // ),
                    //         //
                    //         //   ),
                    //         //
                    //         PrimaryButton(
                    //           text: ("Apply Now "),
                    //           width: double.infinity,
                    //           height: 50.h,
                    //           onPressed: (){},
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Colors.white,
                          width: 400.w,
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                                      boxShadow: [_boxShadow()],
                                    ),
                                    child: Column(
                                      children: [
                                        Text("Job Overview",
                                            style: TextStyle(
                                              fontSize: 26.sp,
                                              color: Colors.black,
                                            )),
                                        Divider(
                                          color: Colors.grey,
                                          indent: 50,
                                          endIndent: 50,
                                        ),
                                        SizedBox(height: 20.h),
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("Ahemdabad, Gujrat",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("Full Time",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("12,000 ₹ - 20,000 ₹ Per Month",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("9 days ago",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xFF666666),
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15.h,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                                      boxShadow: [_boxShadow()],
                                    ),

                                    child: Column(
                                      children: [
                                        SizedBox(height: 15.h),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Additional Details",
                                                    style: TextStyle(
                                                      fontSize: 26.sp,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          color: Colors.grey,
                                          endIndent: 70,
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("35",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
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
                                                      fontSize: 18.sp,
                                                      color: Colors.black,
                                                    )),
                                                Text("97",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: Color(0xFF666666),
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15.h),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Job Description",
                                          style: TextStyle(
                                            fontSize: 26.sp,
                                            color: Colors.black,
                                          )),
                                      SizedBox(height: 20.h),
                                      Text(
                                          "AP-GROUP is hiring iOS developers with upto 1 years of experience. What do we need? Check below:",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Color(0xFF666666),
                                          )),
                                      SizedBox(height: 20.h),
                                      Text(
                                          "- Skills & knowledgeable candidate.\n- Join Immediate bases..",
                                          style: TextStyle(
                                            fontSize: textSize18.sp,
                                            color: Color(0xFF666666),
                                          )),
                                      SizedBox(height: 20.h),
                                      Text("Why you should choose AP-GROUP?",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Color(0xFF666666),
                                          )),
                                      SizedBox(height: 20.h),
                                      Text(
                                          "- 5 Days Working.\n- Big & enterprise projects to work.\n- Increase & develop your skills 100%\n  with advanced technology & concepts.\n- Free work environment, productive and quality.\n- Always mapn  candidates.",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Color(0xFF666666),
                                          )),
                                      SizedBox(height: 20.h),
                                      Text(
                                          "To know more share your latest CV on\n the jobs.apgroup@@gmail.com &\n careers@ap-group.in",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Color(0xFF666666),
                                          )),
                                      SizedBox(height: 30.h),
                                      Text("Tags",
                                          style: TextStyle(
                                            fontSize: 26.sp,
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
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Text(" #iOSDeveloper",
                                                  style: TextStyle(
                                                    fontSize: 18.sp,
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
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Text(" #iOSJobs",
                                                  style: TextStyle(
                                                    fontSize: 18.sp,
                                                    color: Color(0xFF0691CE),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8.h),
                                      Divider(color: Colors.grey,),
                                      SizedBox(height: 20.h),
                                      Row(
                                        children: [
                                          Text("Location",
                                              style: TextStyle(
                                                fontSize: 26.sp,
                                                color: Colors.black,
                                              )),
                                          SizedBox(width: 10.w,),
                                          Icon(Icons.map)
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                      Container(
                                        height: height * 0.6,
                                        width: width,
                                        decoration:
                                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                                        child: GoogleMap(
                                          onMapCreated: _onMapCreated,
                                          initialCameraPosition: CameraPosition(
                                            target: _initialcameraposition,
                                            zoom: 11.0,
                                          ),
                                          myLocationEnabled: true,
                                          mapType: _currentMapType,
                                          myLocationButtonEnabled: true,
                                          zoomGesturesEnabled: true,
                                          indoorViewEnabled: true,
                                        ),
                                      ),

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
                                                fontSize: 20.sp,
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("AP-GROUP",
                                                style: TextStyle(
                                                  fontSize: 24.sp,
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
                                              child: Text("Login to chat"),
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 30.h),
                                      Text("Bookmark or Share",
                                          style: TextStyle(
                                            fontSize: 26.sp,
                                            color: Colors.black,
                                          )),

                                      SizedBox(height: 10.h),

                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: 200.w,
                                          height: 50.h,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF414141) ,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Align(
                                                    child: Text(
                                                      "Save this job",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  )),
                                              InkWell(
                                                onTap: (){
                                                },
                                                child: Container(
                                                  width: 50.w,
                                                  height: 50.h,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4A4A4A),
                                                    borderRadius:
                                                    BorderRadius.circular(5),
                                                  ),
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 10.h),
                                      Wrap(
                                        spacing: 2,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Image.asset(whatsapplogo,
                                                height: 100.h),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon: Image.asset(facebooklogo,
                                                height: 100.h),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon:
                                            Image.asset(gmaillogos, height: 100.h),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon: Image.asset(pinterestlogo,
                                                height: 100.h),
                                            onPressed: () {},
                                          ),
                                          IconButton(
                                            icon:
                                            Image.asset(twitterlogo, height: 100.h),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30.h),

                                      Text("More Info",
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                            color: Colors.black,
                                          )),

                                      SizedBox(height: 10.h),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.shop_outlined,
                                                  size: 22, color: Color(0xFF0691CE)),
                                              SizedBox(width: 10.w),
                                              Text("More jobs by AP-GROUP",
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(height: 10.h),
                                          Row(
                                            children: [
                                              Icon(Icons.perm_contact_cal_rounded,
                                                  size: 22, color: Color(0xFF0691CE)),
                                              SizedBox(width: 10.w),
                                              Text("More jobs by Akash Panchal",
                                                  style: TextStyle(
                                                    fontSize: 16.nsp,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(height: 10.h),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.error,
                                                size: 22,
                                                color: Color(0xFF0691CE),
                                              ),
                                              SizedBox(width: 10.w),
                                              Text("Report this job",
                                                  style: TextStyle(
                                                    fontSize: 16.nsp,
                                                    color: Colors.black,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),

                                      // ListTile(
                                      //   trailing: Icon(Icons.account_balance,size: 5,),
                                      //   title: Text("More jobs by AP-GROUP"),
                                      // ),

                                      SizedBox(height: 70.h),

                                      // ListView.builder(
                                      //   itemCount: 5,
                                      //   physics: NeverScrollableScrollPhysics(),
                                      //   shrinkWrap: true,
                                      //   itemBuilder:
                                      //       (BuildContext context, int index) {
                                      //     return InkWell(
                                      //       onTap: () => Navigator.pushNamed(
                                      //           context, '/job_description'),
                                      //       child: Container(
                                      //         padding: EdgeInsets.symmetric(
                                      //             horizontal: 10.w, vertical: 15.h),
                                      //         decoration: BoxDecoration(
                                      //           border: Border.all(
                                      //               color: Colors.grey.shade200),
                                      //         ),
                                      //         child: Column(
                                      //           crossAxisAlignment:
                                      //               CrossAxisAlignment.start,
                                      //           children: [
                                      //             Row(
                                      //               children: [
                                      //                 Expanded(
                                      //                   flex: 4,
                                      //                   child: Text(
                                      //                     "Sports Officer cum Warden",
                                      //                     style: TextStyle(
                                      //                         color: Colors.blue,
                                      //                         fontSize: 20.nsp),
                                      //                   ),
                                      //                 ),
                                      //                 SizedBox(
                                      //                   width: 10,
                                      //                 ),
                                      //                 OutlineButton(
                                      //                   borderSide: BorderSide(
                                      //                     color: Colors.blue,
                                      //                   ),
                                      //                   onPressed: () {},
                                      //                   child: Text(
                                      //                     "Full Time",
                                      //                     style: TextStyle(
                                      //                         color: Colors.blue,
                                      //                         fontSize: 16.nsp),
                                      //                   ),
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //             // Row(
                                      //             //   children: [
                                      //             //     Icon(Icons.add_location,color: Colors.grey[600],),
                                      //             //     Text(
                                      //             //       "Anand International College of Engineering",style: TextStyle(color: Colors.grey[600],fontSize: 16.nsp),
                                      //             //     ),
                                      //
                                      //             //   ],
                                      //             // ),
                                      //             SizedBox(
                                      //               height: 7.h,
                                      //             ),
                                      //             RichText(
                                      //               text: TextSpan(children: [
                                      //                 WidgetSpan(
                                      //                   child: Icon(
                                      //                     Icons.add_location,
                                      //                     color: Colors.grey[600],
                                      //                     size: 20.h,
                                      //                   ),
                                      //                 ),
                                      //                 TextSpan(
                                      //                   text:
                                      //                       "Anand International College of Engineering",
                                      //                   style: TextStyle(
                                      //                     color: Colors.grey[600],
                                      //                     fontSize: 18.nsp,
                                      //                   ),
                                      //                 )
                                      //               ]),
                                      //             ),
                                      //             SizedBox(
                                      //               height: 7.h,
                                      //             ),
                                      //             RichText(
                                      //               text: TextSpan(children: [
                                      //                 WidgetSpan(
                                      //                   child: Icon(
                                      //                     Icons.add_location,
                                      //                     color: Colors.grey[600],
                                      //                     size: 20.h,
                                      //                   ),
                                      //                 ),
                                      //                 TextSpan(
                                      //                   text: "Jaipur",
                                      //                   style: TextStyle(
                                      //                     color: Colors.grey[600],
                                      //                     fontSize: 18.nsp,
                                      //                   ),
                                      //                 )
                                      //               ]),
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     );
                                      //   },
                                      // ),
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
