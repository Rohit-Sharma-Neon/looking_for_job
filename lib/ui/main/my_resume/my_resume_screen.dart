import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'add_new_resume.dart';

class MyResumeScreen extends StatefulWidget {
  @override
  _MyResumeScreenState createState() => _MyResumeScreenState();
}

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

void openDashboardNavigationMenu() {
  findButton();
  _overlayDashboardNavigationEntry = _overlayDashboardNavigation();
  // Overlay.of(context).insert(_overlayDashboardNavigationEntry);
  isDashboardNavigationOpen = !isDashboardNavigationOpen;
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
              mainAxisSize: MainAxisSize.min,
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

GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
    GlobalKey<SliderMenuContainerState>();

class _MyResumeScreenState extends State<MyResumeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      key: _scaffoldKey,
      appBar: BaseAppBar2(
        title: 'Dashboard',
        leadingIcon: Icons.menu,
        scaffoldKey: _scaffoldKey,
      ),
      drawer: BaseDrawer(),
      body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  padding: EdgeInsets.all(15.h),
                  margin: EdgeInsets.symmetric(
                      horizontal: scaffoldHorizontalPadding.w),
                  width: double.infinity,
                  key: _key,
                  decoration: BoxDecoration(
                    color: Color(0xFF333333),
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                            child: Image(
                                height: 15,
                                image: AssetImage('assets/images/menu.png'))),
                        WidgetSpan(child: SizedBox(width: 15.w)),
                        TextSpan(
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.nsp),
                          text: dashboardNavigation,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(15.h),
              //   margin: EdgeInsets.symmetric(
              //       horizontal: scaffoldHorizontalPadding.w, vertical: 25.h),
              //   height: 320.h,
              //   width: 400.w,
              //   decoration: BoxDecoration(
              //     color: Color(0xFFFFFFFF),
              //     borderRadius: BorderRadius.circular(0),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.2),
              //         spreadRadius: 1,
              //         blurRadius: 1,
              //         offset: Offset(0, 0),
              //       )
              //     ],
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       RichText(
              //         text: TextSpan(
              //           children: [
              //             WidgetSpan(
              //               child: Icon(
              //                 Icons.shopping_bag,
              //                 size: 28.nsp,
              //                 color: Colors.blue,
              //               ),
              //             ),
              //             WidgetSpan(
              //                 child: SizedBox(
              //                   width: 10,
              //                 )),
              //             TextSpan(
              //               style: TextStyle(
              //                   color: Colors.black, fontSize: 18.nsp),
              //               text: "My Jobs",
              //             ),
              //           ],
              //         ),
              //       ),
              //       Divider(
              //         color: Colors.black,
              //         height: 25.h,
              //       ),
              //       SizedBox(height: 10.h),
              //       Container(
              //           margin: EdgeInsets.only(bottom: 10.h),
              //           decoration: BoxDecoration(
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey.withOpacity(0.1),
              //                 spreadRadius: 5,
              //                 blurRadius: 3,
              //                 offset:
              //                 Offset(0, 0), // changes position of shadow
              //               ),
              //             ],
              //             borderRadius: BorderRadius.circular(5),
              //             color: Colors.white,
              //           ),
              //           child: Padding(
              //             padding: EdgeInsets.all(10.w),
              //             child: Row(
              //               children: <Widget>[
              //                 Expanded(
              //                   child: TextField(
              //                     decoration: InputDecoration.collapsed(
              //                       hintText: ' Search...',
              //                     ),
              //                     onChanged: (value) {},
              //                   ),
              //                 ),
              //                 InkWell(
              //                   child: Icon(Icons.search, color: Colors.grey),
              //                   onTap: () {},
              //                 )
              //               ],
              //             ),
              //           )),
              //       SizedBox(height: 5.h),
              //       Column(
              //         mainAxisSize: MainAxisSize.min,
              //         crossAxisAlignment: CrossAxisAlignment.end,
              //         children: [
              //           SizedBox(
              //             height: 100.h,
              //             child: Scrollbar(
              //               child: ListView(
              //                 shrinkWrap: true,
              //                 scrollDirection: Axis.horizontal,
              //                 children: [
              //                   Column(
              //                     mainAxisSize: MainAxisSize.min,
              //                     children: [
              //                       SizedBox(height: 5.h),
              //                       MaterialButton(
              //                         height: 50.h,
              //                         minWidth: 250.w,
              //                         shape: RoundedRectangleBorder(
              //                             borderRadius: new BorderRadius.circular(5)),
              //                         onPressed: () {},
              //                         child: Row(
              //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                           children: [
              //                             Text(
              //                               "jobs",
              //                               style: TextStyle(
              //                                 fontSize: 18.nsp,
              //                                 color: Colors.white,
              //                               ),
              //                             ),
              //                             SizedBox(width: 180.w),
              //                             Text(
              //                               "Status",
              //                               style: TextStyle(
              //                                 fontSize: 18.nsp,
              //                                 color: Colors.white,
              //                               ),
              //                             ),
              //                             SizedBox(width: 100.w),
              //                             Text(
              //                               "Actions",
              //                               style: TextStyle(
              //                                 fontSize: 18.nsp,
              //                                 color: Colors.white,
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                         color: Colors.blue,
              //                       ),
              //                       SizedBox(height: 10.h),
              //                       Text("No active jobs found."),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 20.h),
              Container(
                height: 60.h,
                width: 330.w,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF7FD),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 200.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Color(0xFFE4E4E4),
                      ),
                    ],
                    color: Color(0xFFFFFFFF),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(child: SizedBox(width: 10.w)),
                        WidgetSpan(
                          child: Icon(
                            Icons.attachment_rounded,
                            size: 28.sp,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                            child: SizedBox(
                          width: 10,
                        )),
                        TextSpan(
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w600,
                              fontSize: textSize18),
                          text: myResumes,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                // height: 230.h,
                width: 330.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 1,
                      color: Color(0xFFE4E4E4),
                    ),
                  ],
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(5),
                  //     bottomRight: Radius.circular(5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Search...',
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              InkWell(
                                child: Icon(Icons.search, color: Colors.grey),
                                onTap: () {},
                              )
                            ],
                          ),
                        )),
                    SizedBox(height: 10.h),
                    PrimaryButton(
                      text: "Add New Resume",
                      width: 100.w,
                      height: 50.h,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewResume(),
                          ),
                        );
                      },
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 500.h,
                          child: Scrollbar(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 10.h),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 20.w, right: 20.w),
                                      height: 60.h,
                                      width: 430.w,
                                      // minWidth: 250.w,
                                      // shape: RoundedRectangleBorder(
                                      //     borderRadius: new BorderRadius.circular(5)),
                                      // onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "file",
                                            style: TextStyle(
                                              fontSize: 18.nsp,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 140.w),
                                          Text(
                                            "names",
                                            style: TextStyle(
                                              fontSize: 18.nsp,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 80.w),
                                          Text(
                                            actions,
                                            style: TextStyle(
                                              fontSize: 18.nsp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      color: Color(0xFF198EDC),
                                    ),
                                    SizedBox(height: 10.h),
                                    SizedBox(
                                      height: 400.h,
                                      width: 450.w,
                                      child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              children: [
                                                PrimaryButton(
                                                  text: "Download",
                                                  width: 100.w,
                                                  height: 50.h,
                                                  // color: primaryColorLight,
                                                ),
                                                // SizedBox(width: 60.w,),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 80.w,
                                                      top: 10.h),
                                                  child: Text(
                                                    "Flutter lib",
                                                    style: TextStyle(
                                                        fontSize:
                                                            textSize18,
                                                        color: Colors
                                                            .grey[600]),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 100.w,
                                                              top: 5.h),
                                                      child: Container(
                                                          height: 30.h,
                                                          width: 30.w,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Colors
                                                                      .grey[
                                                                  300]),
                                                          child: Icon(
                                                            Icons
                                                                .app_registration,
                                                            color: Colors
                                                                .grey[800],
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 100.w,
                                                              top: 10.h),
                                                      child: Container(
                                                          height: 30.h,
                                                          width: 30.w,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Colors
                                                                      .grey[
                                                                  300]),
                                                          child: Icon(
                                                            Icons.delete,
                                                            color: Colors
                                                                .grey[600],
                                                          )),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
      title: profile,
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
