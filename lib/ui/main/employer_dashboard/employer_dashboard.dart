import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';


class EmployerDashboard extends StatefulWidget {
  @override
  _EmployerDashboardState createState() => _EmployerDashboardState();
}

class _EmployerDashboardState extends State<EmployerDashboard> {

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  List<Icon> icons = [];

  GlobalKey _key = LabeledGlobalKey("button_icon");
  GlobalKey _key2 = LabeledGlobalKey("button_icon");
  OverlayEntry _overlayDashboardNavigationEntry,_overlayAccountDetailsEntry;
  Size buttonSize;
  Offset buttonPosition;
  bool isDashboardNavigationOpen = false, isAccountDetailsOpen = false;

  findButton() {
    RenderBox renderBox = _key.currentContext.findRenderObject();
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  findButton2() {
    RenderBox renderBox = _key.currentContext.findRenderObject();
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void openDashboardNavigationMenu() {
    findButton();
    _overlayDashboardNavigationEntry = _overlayDashboardNavigation();
    Overlay.of(context).insert(_overlayDashboardNavigationEntry);
    isDashboardNavigationOpen = !isDashboardNavigationOpen;
  }

  void openAccountDetailsMenu() {
    findButton2();
    _overlayAccountDetailsEntry = _overlayAccountDetails();
    Overlay.of(context).insert(_overlayAccountDetailsEntry);
    isAccountDetailsOpen = !isAccountDetailsOpen;
  }

  void closeDashboardNavigationMenu() {
    _overlayDashboardNavigationEntry.remove();
    isDashboardNavigationOpen = !isDashboardNavigationOpen;
    // isAccountDetailsOpen = !isAccountDetailsOpen;
  }

  void closeAccountDetailsMenu() {
    _overlayAccountDetailsEntry.remove();
    isAccountDetailsOpen = !isAccountDetailsOpen;
    // isAccountDetailsOpen = !isAccountDetailsOpen;
  }

  OverlayEntry _overlayDashboardNavigation() {
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          top: buttonPosition.dy + buttonSize.height,
          left: buttonPosition.dx,
          width: buttonSize.width,
          child: Material(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myAccount,
                    style: TextStyle(
                        color: Color(0xFF0691CE), fontSize: textSize16.nsp),
                  ),
                  Column(
                    children: DashBoardNavigationList.myAccountList,
                  ),
                  Text(
                    "My Jobs",
                    style: TextStyle(
                        color: Color(0xFF0691CE), fontSize: textSize16.nsp),
                  ),
                  Column(
                    children: DashBoardNavigationList.myJobsList,
                  ),
                  Text(
                    account,
                    style: TextStyle(
                        color: Color(0xFF0691CE), fontSize: textSize16.nsp),
                  ),
                  Column(
                    children: DashBoardNavigationList.accountList,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  OverlayEntry _overlayAccountDetails() {
    return OverlayEntry(
      builder: (context) {
        return Positioned(
          top: buttonPosition.dy + buttonSize.height,
          left: buttonPosition.dx,
          width: buttonSize.width,
          child: Material(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myAccount,
                    style: TextStyle(
                        color: Color(0xFF0691CE), fontSize: textSize16.nsp),
                  ),
                  Column(
                    children: DashBoardNavigationList.myAccountList,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: SliderMenuContainer(
          drawerIconColor: Colors.transparent,
          drawerIconSize: 0,
          appBarColor: bgScaffoldColor,
          appBarHeight: 0,
          key: _sliderMenuContainerStateKey,
          sliderMenuOpenSize: 280,
          title: Text(
            "title",
            style: TextStyle(fontSize: 22.nsp, fontWeight: FontWeight.w700),
          ),
          sliderMenu: MenuWidget(
            drawerKey: _sliderMenuContainerStateKey,
          ),
          sliderMain: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                webHeader(),
                SizedBox(height: 45.h),

                Container(
                  padding: EdgeInsets.all(10.h),
                  margin: EdgeInsets.symmetric(
                      horizontal: scaffoldHorizontalPadding.w),
                  width: double.infinity,
                  key: _key,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5C6373),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          alignment: Alignment.centerLeft,
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {
                            if (isDashboardNavigationOpen) {
                              closeDashboardNavigationMenu();
                            } else {
                              openDashboardNavigationMenu();
                            }
                          }),
                      Text("Dashboard Navigation", style: TextStyle(fontSize: 18.0, color: Colors.white),),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: scaffoldHorizontalPadding.w),
                  margin: EdgeInsets.only(top: 30.h),
                  height: 160.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Image.asset(pinterestlogo, height: 100.h),
                            onPressed: () {},
                          ),
                          Column(
                            children: [
                              Text(
                                jaspreet,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: textSize24),
                              ),
                              Text(
                                logintime,
                                style: TextStyle(fontSize: textSize16),
                              ),
                              Text(
                                timming0603,
                                style: TextStyle(fontSize: textSize16),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                num0,
                                style: TextStyle(fontSize: textSize16),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.shop_outlined,
                                    color: Color(0xFF0691CE),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    jobs,
                                    style: TextStyle(fontSize: textSize16),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  free,
                                  style: TextStyle(fontSize: textSize16),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.shop_outlined,
                                      color: Color(0xFF0691CE),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      membership,
                                      style: TextStyle(fontSize: textSize16),
                                    ),
                                  ],
                                ),
                              ])
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: scaffoldHorizontalPadding+2.w),
                  margin: EdgeInsets.only(top: 30.h),
                  height: 50.h,
                  width: 330.w,
                  key: _key2,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5C6373),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {
                        if (isAccountDetailsOpen) {
                          closeAccountDetailsMenu();
                        } else {
                          openAccountDetailsMenu();
                        }
                      }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData leadingIcon, trailingIcon;
  final String title;

  const CustomListTile(
      {@required this.leadingIcon, @required this.title, this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      leading: Icon(leadingIcon),
      title: Text(
        title,
        style: TextStyle(fontSize: textSize14.nsp),
      ),
      trailing: Icon(
        trailingIcon,
        color: Color(0xFF0691CE),
      ),
    );
  }
}

class DashBoardNavigationList {
  static List<Widget> myAccountList = [
    CustomListTile(
      leadingIcon: Icons.dashboard,
      title: dashboard,
    ),
    CustomListTile(
      leadingIcon: Icons.person_pin_circle_rounded,
      title: profilePublicView,
    ),
    CustomListTile(
      leadingIcon: Icons.card_membership,
      title: membership,
    ),
  ];
  static List<Widget> myJobsList = [
    CustomListTile(
      leadingIcon: Icons.roofing,
      title: myCompanies,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.shopping_bag_outlined,
      title: myJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.access_time,
      title: pendingJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.tv_off_rounded,
      title: hiddenJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.error,
      title: expiredJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.assistant_direction,
      title: resubmittedJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.favorite,
      title: favoriteUsers,
      trailingIcon: Icons.attractions,
    ),
  ];
  static List<Widget> accountList = [
    CustomListTile(
      leadingIcon: Icons.receipt,
      title: transactions,
    ),
    CustomListTile(
      leadingIcon: Icons.logout,
      title: logout,
    ),
  ];
}
