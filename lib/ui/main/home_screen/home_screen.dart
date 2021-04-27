import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/ui/main/profile/profile_seeker_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            children: [
              CarouselSlider(
                items: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSeekerScreen()),
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
                            builder: (context) => ProfileSeekerScreen()),
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
            ],
          ),
        ),
      ),
    );
  }
}
