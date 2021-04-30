import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EmployerProfileScreen extends StatefulWidget {
  @override
  _EmployerProfileScreenState createState() => _EmployerProfileScreenState();
}

class _EmployerProfileScreenState extends State<EmployerProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<String> entries = <String>['Ankit', 'Rohit', 'Rajeev'];
  final List<int> colorCodes = <int>[600, 500, 100];
  double primaryLanguageValue = 0, secondaryLanguageValue = 0;

  List<User> selectedUserList = [];
  String languageExpereince = "Beginner";

  void _openFilterDialog() async {
    await FilterListDialog.display(
      context,
      borderRadius: cornersRadiusLight.r,
      applyButtonTextStyle:
      TextStyle(fontSize: textSize16.sp, color: Colors.white),
      hidecloseIcon: false,
      listData: userList,
      selectedListData: selectedUserList,
      height: 480.h,
      headlineText: "General Skills",
      searchFieldHintText: "Search Skills",
      label: (item) {
        return item.name;
      },
      validateSelectedItem: (list, val) {
        return list.contains(val);
      },
      onItemSearch: (list, text) {
        if (list.any((element) =>
            element.name.toLowerCase().contains(text.toLowerCase()))) {
          return list
              .where((element) =>
              element.name.toLowerCase().contains(text.toLowerCase()))
              .toList();
        }
        return null;
      },
      onApplyButtonClick: (list) {
        if (list != null) {
          setState(() {
            selectedUserList = List.from(list);
          });
          Navigator.pop(context);
        }
      },
    );
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 25.h,
        selectedColor: primaryColorLight,
        strokeColor: primaryColorLight,
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedTitle: Text(
              "Home",
              style: TextStyle(
                  color: primaryColorLight, fontWeight: FontWeight.w700),
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.business_rounded),
            title: Text("Jobs"),
            selectedTitle: Text(
              "Jobs",
              style: TextStyle(
                  color: primaryColorLight, fontWeight: FontWeight.w700),
            ),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text("Notification"),
            selectedTitle: Text(
              "Notification",
              style: TextStyle(
                  color: primaryColorLight, fontWeight: FontWeight.w700),
            ),
            showBadge: true,
            badgeCount: 5,
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.business_rounded),
            title: Text("Company"),
            selectedTitle: Text(
              "Company",
              style: TextStyle(
                  color: primaryColorLight, fontWeight: FontWeight.w700),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_rounded,
            color: primaryTextColorLightTheme,
            size: 25.r,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
              color: primaryTextColorLightTheme,
              fontWeight: FontWeight.w700,
              fontSize: textSize18.sp),
        ),
      ),
      drawer: BaseDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: scaffoldHorizontalPadding.w,
              vertical: scaffoldHorizontalPadding.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.settings,
                              size: 20.h,
                              color: Colors.transparent,
                            ),
                          ),
                          Container(
                            width: 60.r,
                            height: 60.r,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: primaryColorLight.withOpacity(0.5),
                                    blurRadius: 6.0,
                                    offset: Offset(0, 0),
                                    spreadRadius: 3),
                                BoxShadow(
                                    color: primaryColorLight,
                                    blurRadius: 0.0,
                                    offset: Offset(0, 0),
                                    spreadRadius: 2)
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(dummy_profile2),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Icon(
                            Icons.settings,
                            size: 20.h,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Ankit Sharma",
                        style: TextStyle(
                          fontSize: textSize18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "spydy@gmail.com",
                        style: TextStyle(
                          fontSize: textSize14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          height: 1.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.h),
                        alignment: Alignment.center,
                        width: 120.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.r),
                          ),
                          color: primaryColorLight,
                        ),
                        child: Text(
                          "Software Engineer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: textSize12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "About Company",
                            style: TextStyle(
                              color: primaryTextColorLightTheme,
                              fontWeight: FontWeight.w700,
                              fontSize: textSize16.sp,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: iconColorLight,
                            size: 20.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        loremIpsum,
                        maxLines: 3,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: textSize14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Jobs",
                            style: TextStyle(
                              color: primaryTextColorLightTheme,
                              fontWeight: FontWeight.w700,
                              fontSize: textSize16.sp,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: iconColorLight,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      TimelineTile(
                        afterLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        alignment: TimelineAlign.start,
                        indicatorStyle: IndicatorStyle(
                          color: primaryColorLight,
                          indicatorXY: 0.12.h,
                          width: 7.w,
                          drawGap: true,
                          padding: EdgeInsets.only(
                            bottom: 7.h,
                            right: 15.w,
                          ),
                        ),
                        isFirst: true,
                        lineXY: 0.3,
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  " 30 april 2021",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: textSize14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.edit,
                                  color: iconColorLight,
                                  size: 20.h,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                color: primaryTextColorLightTheme,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Software Private Company",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Scheme Jaipur, Rajasthan",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Wrap(
                              runSpacing: 10.h,
                              spacing: 10.w,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      TimelineTile(
                        isLast: true,
                        afterLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        beforeLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        alignment: TimelineAlign.start,
                        indicatorStyle: IndicatorStyle(
                          color: primaryColorLight,
                          indicatorXY: 0.27,
                          width: 7.w,
                          padding: EdgeInsets.only(
                            bottom: 7.h,
                            right: 15.w,
                            top: 7.h,
                          ),
                        ),
                        lineXY: 0.3,
                        endChild:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  " 30 april 2021",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: textSize14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.edit,
                                  color: iconColorLight,
                                  size: 20.h,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                color: primaryTextColorLightTheme,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Software Private Company",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Scheme Jaipur, Rajasthan",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Wrap(
                              runSpacing: 10.h,
                              spacing: 10.w,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.h),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Text(
                                    "Engineer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Applied candidates",
                            style: TextStyle(
                              color: primaryTextColorLightTheme,
                              fontWeight: FontWeight.w700,
                              fontSize: textSize16.sp,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: iconColorLight,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      TimelineTile(
                        afterLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        alignment: TimelineAlign.start,
                        indicatorStyle: IndicatorStyle(
                          color: Colors.yellow.shade700,
                          indicatorXY: 0.12.h,
                          width: 7.w,
                          drawGap: true,
                          padding: EdgeInsets.only(
                            bottom: 7.h,
                            right: 15.w,
                          ),
                        ),
                        isFirst: true,
                        lineXY: 0.3,
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.h),
                            Text(
                              "Software Engineering",
                              style: TextStyle(
                                color: primaryTextColorLightTheme,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "3 Candidates applied.",
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            SizedBox(
                              height: 100,
                              child: GridView.builder(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                itemCount: 4,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 3.h,
                                  crossAxisSpacing: 9.w,
                                  mainAxisSpacing: 10.h,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 40.r,
                                        height: 40.r,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: primaryColorLight.withOpacity(0.5),
                                                blurRadius: 6.0,
                                                offset: Offset(0, 0),
                                                spreadRadius: 3),
                                            BoxShadow(
                                                color: primaryColorLight,
                                                blurRadius: 0.0,
                                                offset: Offset(0, 0),
                                                spreadRadius: 2)
                                          ],
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(dummy_profile2),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Text("Rohit"),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      TimelineTile(
                        isLast: true,
                        afterLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        beforeLineStyle:
                        LineStyle(thickness: 1.5.w, color: Colors.grey),
                        alignment: TimelineAlign.start,
                        indicatorStyle: IndicatorStyle(
                          color: Colors.yellow.shade700,
                          indicatorXY: 0.27,
                          width: 7.w,
                          padding: EdgeInsets.only(
                            bottom: 7.h,
                            right: 15.w,
                            top: 7.h,
                          ),
                        ),
                        lineXY: 0.3,
                        endChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.h),
                            Text(
                              "Application Developer",
                              style: TextStyle(
                                color: primaryTextColorLightTheme,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "3 Candidates applied.",
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                  itemCount: entries.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      height: 30,
                                      color: Colors.blue[colorCodes[index]],
                                      child: Center(child: Text('Candidates ${entries[index]}')),
                                    );
                                  }
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Languages",
                            style: TextStyle(
                              color: primaryTextColorLightTheme,
                              fontWeight: FontWeight.w700,
                              fontSize: textSize16.sp,
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: iconColorLight,
                            size: 20.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "English ($languageExpereince)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: textSize14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: primaryLanguageValue,
                              min: 0,
                              max: 100,
                              label: '$primaryLanguageValue',
                              onChanged: (value) {
                                setState(
                                      () {
                                    primaryLanguageValue = value;
                                    if (value <= 40) {
                                      languageExpereince = "Beginner";
                                    } else if(value <= 80){
                                      languageExpereince = "Intermediate";
                                    } else {
                                      languageExpereince = "Advanced";
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.close_rounded,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "English (Advanced)",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: textSize14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: secondaryLanguageValue,
                              min: 0,
                              max: 100,
                              label: '$secondaryLanguageValue',
                              onChanged: (value) {
                                setState(
                                      () {
                                    secondaryLanguageValue = value;
                                  },
                                );
                              },
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.close_rounded,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.h),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                              color: primaryTextColorLightTheme,
                              fontWeight: FontWeight.w700,
                              fontSize: textSize16.sp,
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            color: iconColorLight,
                            size: 20.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "General Skills",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: _openFilterDialog,
                            child: Icon(
                              Icons.edit_rounded,
                              color: iconColorLight,
                            ),
                          ),
                        ],
                      ),
                      selectedUserList == null || selectedUserList.length == 0
                          ? Text(
                        'Selected skills will appear here',
                        style: TextStyle(color: Colors.grey.shade400),
                      )
                          : GridView.builder(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        itemCount: selectedUserList.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3.h,
                          crossAxisSpacing: 9.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 3.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(100.r),
                            ),
                            child: Text(
                              selectedUserList[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Technical skills",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: textSize14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: _openFilterDialog,
                            child: Icon(
                              Icons.edit_rounded,
                              color: iconColorLight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 28.w,
                      vertical: 8.h,
                    ),
                  ),
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      fontSize: textSize16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String avatar;

  User({this.name, this.avatar});
}

List<User> userList = [
  User(name: "Jon", avatar: "asd"),
  User(name: "Lindsey ", avatar: "asd"),
  User(name: "Valarie ", avatar: "asd"),
  User(name: "Elyse ", avatar: "asd"),
  User(name: "Ethel ", avatar: "asd"),
  User(name: "Emelyan ", avatar: "asd"),
  User(name: "Catherine ", avatar: "asd"),
  User(name: "Stepanida  ", avatar: "asd"),
  User(name: "Carolina ", avatar: "asd"),
  User(name: "Nail  ", avatar: "asd"),
];
