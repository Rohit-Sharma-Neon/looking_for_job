import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';

class AddNewExperience extends StatefulWidget {
  @override
  _AddNewExperienceState createState() => _AddNewExperienceState();
}

class _AddNewExperienceState extends State<AddNewExperience> {
  int selectedRadio;

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

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
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
              margin: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
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
            style: TextStyle(fontSize: 22.nsp, fontWeight: FontWeight.w700),
          ),
          sliderMenu: MenuWidget(
            drawerKey: _sliderMenuContainerStateKey,
          ),
          sliderMain: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                webHeader(_sliderMenuContainerStateKey),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: () {
                    if (isDashboardNavigationOpen) {
                      closeDashboardNavigationMenu();
                    } else {
                      openDashboardNavigationMenu();
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(12.h),
                    margin: EdgeInsets.symmetric(
                        horizontal: scaffoldHorizontalPadding.w),
                    width: double.infinity,
                    key: _key,
                    decoration: BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                              alignment: PlaceholderAlignment.baseline,
                              baseline: TextBaseline.alphabetic,
                              child: Image(
                                height: 15,
                                width: 20.w,
                                image: AssetImage('assets/images/menu.png'),
                              )),
                          WidgetSpan(child: SizedBox(width: 15.w)),
                          TextSpan(
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.nsp),
                            text: dashboardNavigation,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
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
                          offset: Offset(0, 2), // changes position of shadow
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
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.star,
                                  size: 28.nsp,
                                  color: Color(0xff198EDC),
                                ),
                              ),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              TextSpan(
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                ),
                                text: addNewExperiences,
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
                      vertical: 10.h, horizontal: scaffoldHorizontalPadding.w),
                  width: 330.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[350]),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.5,
                          blurRadius: 1,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: title1,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: company,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: city,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: company,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: description,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 85.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: startDate,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: endDate,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: "*",
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 45.h,
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
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: currentlyWorking,
                                style: TextStyle(
                                  fontSize: textSize16,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                )),
                          ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            Text(yes),
                            Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                print("Radio $val");
                                setSelectedRadio(val);
                              },
                            ),
                            Text(no),
                          ],
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        // ButtonTheme(
                        //   height: 50,
                        //   child: RaisedButton(
                        //     color: Color(0xff198EDC),
                        //     onPressed: () {
                        //       print('Pressed');
                        //     },
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(5.0),
                        //     ),
                        //     child: Text(
                        //        save,
                        //       style: TextStyle(
                        //         fontSize: textSize16,
                        //         color: Color(0xFFFFFFFF),
                        //         fontWeight: FontWeight.w600,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        PrimaryButton(
                          height: 50.h,
                          width: 50.w,
                          text: save,
                          onPressed: () {},
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
        color: Color(0xff198EDC),
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
