import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/ui/main/job_description/job_description.dart';
import 'package:lookingforjob_flutter/ui/main/kunal/onboarding_screen.dart';
import 'package:lookingforjob_flutter/ui/main/kunal/subcategories.dart';
import 'package:lookingforjob_flutter/ui/main/postajob/post_job_screen.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: TextButton(
        style: TextButton.styleFrom(
            minimumSize: Size(double.infinity, 40.h),
            backgroundColor: primaryColorLight),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StepperPage(),
            ),
          );
        },
        child: Text(
          "Post A Job",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      appBar: AppBar(
        // leading: InkWell(
        //   child: Icon(
        //     Icons.arrow_back_rounded,
        //     color: iconColorLight,
        //   ),
        // ),
        leading: Container(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Hello Rohit",
          style: TextStyle(
              color: primaryTextColorLightTheme, fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Icon(
                Icons.search_rounded,
                color: iconColorLight,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scaffoldHorizontalPadding.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileSeekerScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(6.r),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileSeekerScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(6.r),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileSeekerScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.all(6.r),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 120.h,
                  enlargeCenterPage: true,
                  autoPlayInterval: Duration(seconds: 2),
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  aspectRatio: 18 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 20.h),
              GridView.count(
                controller: new ScrollController(keepScrollOffset: false),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: List.generate(
                  6,
                  (index) {
                    return InkWell(
                      focusColor: primaryColorLight,
                      hoverColor: primaryColorLight,
                      highlightColor: primaryColorLight,
                      splashColor: primaryColorLight,
                      onTap: () {
                        // Navigator.push(context,  MaterialPageRoute(
                        //     builder: (BuildContext context) =>
                        //         UserTypeScreen()),);
                        // print("pressed");
                      },
                      child: Center(
                        child: SelectCard(choice: choices[index]),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Featured Job",
                style: TextStyle(
                  fontSize: textSize16.sp,
                  color: primaryTextColorLightTheme,
                ),
              ),
              SizedBox(height: 5.h),
              ListView.builder(
                itemCount: 3,
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
                              Radius.circular(15.r),
                            ),
                          ),
                          openBuilder: (BuildContext context,
                              void Function({Object returnValue}) action) {
                            return JobDescription();
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubCategoriesScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                      child: Text(
                        "More",
                        style: TextStyle(
                            color: primaryColorLight,
                            fontWeight: FontWeight.bold,
                            fontSize: textSize12.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                "Latest Job",
                style: TextStyle(
                  fontSize: textSize16.sp,
                  color: primaryTextColorLightTheme,
                ),
              ),
              SizedBox(height: 5.h),
              ListView.builder(
                itemCount: 3,
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
                              Radius.circular(15.0),
                            ),
                          ),
                          openBuilder: (BuildContext context,
                              void Function({Object returnValue}) action) {
                            return JobDescription();
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubCategoriesScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                      child: Text(
                        "More",
                        style: TextStyle(
                            color: primaryColorLight,
                            fontWeight: FontWeight.bold,
                            fontSize: textSize12.sp),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
