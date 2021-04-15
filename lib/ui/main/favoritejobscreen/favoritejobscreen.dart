import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';

class FavoriteJobScreen extends StatefulWidget {
  @override
  _FavoriteJobScreenState createState() => _FavoriteJobScreenState();
}

class _FavoriteJobScreenState extends State<FavoriteJobScreen> {
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
    Overlay.of(context).insert(_overlayDashboardNavigationEntry);
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

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();


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
                    padding: EdgeInsets.all(15.h),
                    margin: EdgeInsets.symmetric(
                        horizontal: scaffoldHorizontalPadding.w),
                    width: double.infinity,
                    key: _key,
                    decoration: BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text.rich(
                      TextSpan(
                        children:[
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
                //   height: 220.h,
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
                //                 Icons.access_time,
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
                //               text: "Pending Jobs",
                //             ),
                //           ],
                //         ),
                //       ),
                //       Divider(
                //         color: Colors.black,
                //         height: 25.h,
                //       ),
                //       SizedBox(height: 10.h),
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
                //                       Text("No pending jobs found."),
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
                              Icons.favorite_border,
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
                                color: Colors.black, fontSize: 18.nsp),
                            text: favouriteJobs,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  height: 100.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 2,
                        color: Color(0xFFE4E4E4),
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
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 5,
                              blurRadius: 3,
                              offset:
                              Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                      ),
                      Text(noFavouriteJobsFound)
                    ],
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
  ];
  static List<Widget> myJobsList = [
    CustomListTile(
      leadingIcon: Icons.attach_file,
      title: myResumes,
      trailingIcon: Icons.attractions,
    ),
    // CustomListTile(
    //   leadingIcon: Icons.accessibility,
    //   title: myExperiences,
    //   trailingIcon: Icons.attractions,
    // ),
    // CustomListTile(
    //   leadingIcon: Icons.shopping_bag_outlined,
    //   title: appliedJobs,
    //   trailingIcon: Icons.attractions,
    // ),
    CustomListTile(
      leadingIcon: Icons.favorite_border,
      title: favouriteJobs,
      trailingIcon: Icons.attractions,
    ),
    CustomListTile(
      leadingIcon: Icons.notifications,
      title: jobAlert,
      trailingIcon: Icons.attractions,
    ),
  ];
  static List<Widget> accountList = [
    CustomListTile(
      leadingIcon: Icons.logout,
      title: logout,
    ),
  ];
}




