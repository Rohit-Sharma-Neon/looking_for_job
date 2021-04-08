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
  String radioItem = '';
  String _cityValue;
  bool _fullTime = false;
  bool _partTime = false;
  bool _temproray = false;
  bool _permanent = false;
  bool _internship = false;
  bool _freelancer = false;
  bool _remotely = false;
  bool _hour = false;
  bool _day = false;
  bool _month = false;
  bool _year = false;

  List<Icon> icons = [];

  GlobalKey _key = LabeledGlobalKey("button_icon");
  GlobalKey _key2 = LabeledGlobalKey("button_icon");
  OverlayEntry _overlayDashboardNavigationEntry, _overlayAccountDetailsEntry;
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
              margin: EdgeInsets.symmetric(horizontal: 15.w,),
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
                    myJobs,
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
            backgroundColor: Color(0xFFFFFFFF),
            body: SliderMenuContainer(
                drawerIconColor: Colors.transparent,
                drawerIconSize: 0,
                appBarColor: bgScaffoldColor,
                appBarHeight: 0,
                key: _sliderMenuContainerStateKey,
                sliderMenuOpenSize: 280,
                title: Text(
                  title,
                  style:
                      TextStyle(fontSize: 22.nsp, fontWeight: FontWeight.w700),
                ),
                sliderMenu: MenuWidget(
                  drawerKey: _sliderMenuContainerStateKey,
                ),
                sliderMain: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      webHeader(_sliderMenuContainerStateKey),
                      SizedBox(height: 45.h),
                      InkWell(
                        onTap: () {
                          if (isDashboardNavigationOpen) {
                            closeDashboardNavigationMenu();
                          } else {
                            openDashboardNavigationMenu();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(15.h),
                          margin: EdgeInsets.symmetric(
                              horizontal: scaffoldHorizontalPadding.w),
                          width: double.infinity,
                          key: _key,
                          decoration: BoxDecoration(
                            color: Color(0xFF333333),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(child: SizedBox(width: 10.w)),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.menu,
                                    size: 18.nsp,
                                    color: Colors.white,
                                  ),
                                ),
                                WidgetSpan(child: SizedBox(width: 15.w)),
                                TextSpan(
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18.nsp),
                                  text: dashboardNavigation,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 25.h,
                            horizontal: scaffoldHorizontalPadding.w),
                        margin: EdgeInsets.only(top: 30.h),
                        height: 200.h,
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
                                  icon:
                                      Image.asset(pinterestlogo, height: 100.h),
                                  onPressed: () {},
                                ),
                                Column(
                                  children: [
                                    Text(
                                      jaspreet,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: textSize24),
                                    ),
                                    Text(
                                      logintime,
                                      style: TextStyle(fontSize: textSize14),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      timming0603,
                                      style: TextStyle(fontSize: textSize14),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 25.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IntrinsicHeight(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Text(
                                          num0,
                                          style: TextStyle(
                                              fontSize: textSize16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5.h),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.shop_outlined,
                                              color: Color(0xFF0691CE),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              jobs,
                                              style: TextStyle(
                                                  fontSize: textSize16),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    VerticalDivider(),
                                    SizedBox(width: 10),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            free,
                                            style: TextStyle(
                                                fontSize: textSize16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.h),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.shop_outlined,
                                                color: Color(0xFF0691CE),
                                              ),
                                              SizedBox(width: 5.w),
                                              Text(
                                                membership,
                                                style: TextStyle(
                                                    fontSize: textSize16),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 45),

                      Container(
                        height: 60.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[350]),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          height: 200.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.white,
                              ),
                            ],
                            color: Color(0xFFFFFFFF),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.person,
                                        size: 28.nsp,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: SizedBox(
                                      width: 10,
                                    )),
                                    TextSpan(
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.nsp,
                                          fontWeight: FontWeight.w400),
                                      text: "Account Details",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: scaffoldHorizontalPadding.w),
                        width: 330.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[350]),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(0)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Name",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 320.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.person_outline,
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: " User Name",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.person_outline,
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Email Address",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.email_outlined,
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Phone Number",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.phone_outlined,
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Avatar",
                                  style: TextStyle(
                                    fontSize: 18.nsp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue.withOpacity(0.1),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: ButtonTheme(
                                    height: 50.h,
                                    minWidth: 350.w,
                                    child: OutlineButton(
                                      onPressed: () {},
                                      splashColor: Color(0xff198EDC),
                                      borderSide: BorderSide(
                                        color: Color(0xff198EDC),
                                      ),
                                      shape: ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Upload Avatar",
                                        style: TextStyle(
                                          fontSize: 18.nsp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff198EDC),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Use 150x150px image for perfect look.",
                                    style: TextStyle(
                                        fontSize: textSize16.nsp,
                                        color: Colors.grey)),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                      fontSize: 18.nsp,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 50.w,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50.w,
                                        // child: RadioListTile(
                                        //   groupValue: radioItem,
                                        //   title: Text('Male'),
                                        //   value: 'Item 3',
                                        //   onChanged: (val) {
                                        //     setState(() {
                                        //       radioItem = val;
                                        //     });
                                        //   },
                                        // ),
                                      ),
                                      // SizedBox(
                                      //   width: 50.w,
                                      //   child: RadioListTile(
                                      //     groupValue: radioItem,
                                      //     title: Text('Female'),
                                      //     value: 'Item 2',
                                      //     onChanged: (val) {
                                      //       setState(() {
                                      //         radioItem = val;
                                      //       });
                                      //     },
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   width: 50.w,
                                //   child: RadioListTile(
                                //     groupValue: radioItem,
                                //     title: Text('Other'),
                                //     value: 'Item 3',
                                //     onChanged: (val) {
                                //       setState(() {
                                //         radioItem = val;
                                //       });
                                //     },
                                //   ),
                                // ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "City",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                    height: 50.h,
                                    width: 350.w,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.grey[300]),
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            spreadRadius: 0.5,
                                            blurRadius: 1,
                                            // changes position of shadow
                                          ),
                                        ]),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isDense: false,
                                        hint: _cityValue == null
                                            ? Text(
                                                '    Select City',
                                                style: TextStyle(
                                                    fontSize: textSize18.nsp),
                                              )
                                            : Text(
                                                _cityValue,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                        isExpanded: true,
                                        iconSize: 30.0,
                                        style: TextStyle(color: Colors.black),
                                        items: [
                                          ' Banglearu',
                                          " punjab",
                                          " jaipur",
                                          " Mumbai",
                                          " Noida",
                                          " Delhi",
                                          " U.P",
                                        ].map(
                                          (val) {
                                            return DropdownMenuItem<String>(
                                              value: val,
                                              child: Text(val),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              _cityValue = val;
                                            },
                                          );
                                        },
                                      ),
                                    )),
                                SizedBox(
                                  height: 20.h,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Address",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: " *",
                                        style: TextStyle(
                                            fontSize: 18.nsp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ]),
                                ),
                                SizedBox(height: 20.h),
                                TextField(
                                  autofocus: false,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: "Address",
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey[350]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("About Me",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: 20.h),
                                TextField(
                                  autofocus: false,
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                    hintText: "Description",
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey[350]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Website",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.insert_link_outlined,
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Facebook",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/facebooklogo.png",
                                              color: Colors.grey[600],
                                              height: 20,
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Instagram",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/intagram.png",
                                              color: Colors.grey[600],
                                              height: 15,
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("Twitter",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/twitter.png",
                                              color: Colors.grey[600],
                                              height: 15,
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("LinkedIn",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              "assets/images/linkedin.png",
                                              color: Colors.grey[600],
                                              height: 20,
                                            )),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text("YouTube",
                                    style: TextStyle(
                                        fontSize: 18.nsp,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                  height: 50.h,
                                  width: 350.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 0.5,
                                          blurRadius: 1,
                                          // changes position of shadow
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50.h,
                                        width: 50.w,
                                        color: Colors.grey[200],
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Image.asset(
                                            "assets/images/youtubelogo.png",
                                            color: Colors.grey[600],
                                            height: 30.h,
                                          ),
                                        ),
                                      ),
                                      // VerticalDivider(),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextField(
                                            autofocus: false,
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                ButtonTheme(
                                  height: 50,
                                  child: RaisedButton(
                                    color: Color(0xff198EDC),
                                    onPressed: () {
                                      print('Pressed');
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Text(
                                      "Save Changes",
                                      style: TextStyle(
                                          fontSize: 18.nsp,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),

                      Container(
                        height: 60.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[350]),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          height: 200.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.white,
                              ),
                            ],
                            color: Color(0xFFFFFFFF),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20.w,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.lock,
                                        size: 28.nsp,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: SizedBox(
                                      width: 10,
                                    )),
                                    TextSpan(
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.nsp),
                                      text: "Password",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: scaffoldHorizontalPadding.w),
                        width: 330.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[350]),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "New Password",
                                style: TextStyle(
                                    fontSize: 18.nsp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 50.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[300]),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 0.5,
                                        blurRadius: 1,
                                        // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: TextField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                " Reapeat New Password",
                                style: TextStyle(
                                    fontSize: 18.nsp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 50.h,
                                width: 350.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[300]),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 0.5,
                                        blurRadius: 1,
                                        // changes position of shadow
                                      ),
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: TextField(
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              ButtonTheme(
                                height: 50,
                                child: RaisedButton(
                                  color: Color(0xff198EDC),
                                  onPressed: () {
                                    print('Pressed');
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                      fontSize: 18.nsp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       vertical: 15.h,
                      //       horizontal: scaffoldHorizontalPadding.w),
                      //   width: 330.w,
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.grey[350]),
                      //       color: Colors.white,
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.grey.withOpacity(0.3),
                      //           spreadRadius: 0.5,
                      //           blurRadius: 1,
                      //           offset: Offset(0, 2), // changes position of shadow
                      //         ),
                      //       ],
                      //       borderRadius: BorderRadius.circular(5)),
                      //   child: Padding(
                      //     padding: const EdgeInsets.symmetric(horizontal: 15),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Job Type",
                      //           style: TextStyle(fontSize: 26.nsp),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Full Time'),
                      //             value: _fullTime,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _fullTime = !_fullTime;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Part Time'),
                      //             value: _partTime,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _partTime = !_partTime;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Temproray'),
                      //             value: _temproray,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _temproray = !_temproray;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Permanent'),
                      //             value: _permanent,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _permanent = !_permanent;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Internship'),
                      //             value: _internship,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _internship = !_internship;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Freelancer'),
                      //             value: _freelancer,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _freelancer = !_freelancer;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Remotely'),
                      //             value: _remotely,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _remotely = !_remotely;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           height: 50.h,
                      //         ),
                      //         Text(
                      //           "Salary Type",
                      //           style: TextStyle(fontSize: 26.nsp),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Hour'),
                      //             value: _hour,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _hour = !_hour;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Day'),
                      //             value: _day,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _day = !_day;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Month'),
                      //             value: _month,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _month = !_month;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         Transform.scale(
                      //           scale: 1.2,
                      //           child: CheckboxListTile(
                      //             controlAffinity: ListTileControlAffinity.leading,
                      //             title: Text('Year'),
                      //             value: _year,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _year = !_year;
                      //               });
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(height: 40.h,),
                      //         Text(
                      //           "Salary",
                      //           style: TextStyle(fontSize: 26.nsp),
                      //         ),
                      //         SizedBox(height: 20.h,),
                      //         Row(children: [
                      //           Container(
                      //             height: 50.h,
                      //             width: 120.w,
                      //             decoration: BoxDecoration(
                      //                 border: Border.all(
                      //                   color: Colors.grey[350],
                      //                 ),
                      //                 borderRadius: BorderRadius.circular(5),
                      //                 color: Colors.white,
                      //                 boxShadow: [
                      //                   BoxShadow(
                      //                     color: Colors.grey.withOpacity(0.3),
                      //                     spreadRadius: 0.5,
                      //                     blurRadius: 1,
                      //                     offset: Offset(0, 2),
                      //                   )
                      //                 ]),
                      //             child: Padding(
                      //               padding: EdgeInsets.only(left: 15.w),
                      //               child: TextField(
                      //                 autofocus: false,
                      //                 decoration: InputDecoration(
                      //                     border: InputBorder.none,
                      //                     hintText: "Max"),
                      //               ),
                      //             ),
                      //           ),
                      //           Container(
                      //             height: 50.h,
                      //             width: 120.w,
                      //             decoration: BoxDecoration(
                      //                 border: Border.all(
                      //                   color: Colors.grey[350],
                      //                 ),
                      //                 borderRadius: BorderRadius.circular(5),
                      //                 color: Colors.white,
                      //                 boxShadow: [
                      //                   BoxShadow(
                      //                     color: Colors.grey.withOpacity(0.3),
                      //                     spreadRadius: 0.5,
                      //                     blurRadius: 1,
                      //                     offset: Offset(0, 2),
                      //                   )
                      //                 ]),
                      //             child: Padding(
                      //               padding: EdgeInsets.only(left: 15.w),
                      //               child: TextField(
                      //                 autofocus: false,
                      //                 decoration: InputDecoration(
                      //                     border: InputBorder.none,
                      //                     hintText: "Min"),
                      //               ),
                      //             ),
                      //           ),
                      //         ],),
                      //         SizedBox(height: 30.h,),
                      //         ButtonTheme(
                      //           height: 50,
                      //           minWidth: 350.w,
                      //           child: RaisedButton(
                      //             color: Color(0xff198EDC),
                      //             onPressed: () {
                      //               print('Pressed');
                      //             },
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(5.0),
                      //             ),
                      //             child: Text(
                      //               "Advance Search",
                      //               style: TextStyle(
                      //                   color: Colors.white, fontSize: 16),
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //
                      //     ),
                      //   ),
                      // )
                    ])))));
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
