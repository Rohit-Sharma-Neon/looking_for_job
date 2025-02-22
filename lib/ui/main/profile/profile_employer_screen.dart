// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttericon/font_awesome_icons.dart';
// import 'package:gender_selection/gender_selection.dart';
// import 'package:lookingforjob_flutter/constants/colors.dart';
// import 'package:lookingforjob_flutter/constants/image_helper.dart';
// import 'package:lookingforjob_flutter/constants/primary_button.dart';
// import 'package:lookingforjob_flutter/constants/sizes.dart';
// import 'package:lookingforjob_flutter/constants/strings.dart';
// import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
// import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
// import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';
//
// class ProfileEmployerScreen extends StatefulWidget {
//   @override
//   _ProfileEmployerScreenState createState() => _ProfileEmployerScreenState();
// }
//
// class _ProfileEmployerScreenState extends State<ProfileEmployerScreen> {
//   int selectedRadio;
//   String _cityValue;
//
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//
//   BoxShadow _boxShadow() {
//     return BoxShadow(
//       color: Colors.grey.withOpacity(0.2),
//       spreadRadius: 2,
//       blurRadius: 2,
//       offset: Offset(0, 0),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       bottomSheet: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(0),
//           ),
//           primary: primaryColorLight,
//           minimumSize: Size(double.infinity, 40.h),
//         ),
//         onPressed: () {},
//         child: Text(
//           "Save Changes",
//           style: TextStyle(fontSize: textSize16.sp),
//         ),
//       ),
//       appBar: BaseAppBar2(
//         title: 'Dashboard',
//         leadingIcon: Icons.menu,
//         scaffoldKey: _scaffoldKey,
//       ),
//       drawer: BaseDrawer(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: scaffoldHorizontalPadding.w,
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: 15.h),
//               // DashBoardNavigationButton(),
//               Container(
//                 padding: EdgeInsets.symmetric(
//                     vertical: 25.h, horizontal: scaffoldHorizontalPadding.w),
//                 margin: EdgeInsets.only(top: 15.h),
//                 height: 200.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFFFFFFF),
//                   borderRadius: BorderRadius.circular(5.r),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.2),
//                       spreadRadius: 1,
//                       blurRadius: 1,
//                       offset: Offset(0, 0),
//                     )
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Container(
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey[350]),
//                                 color: Colors.white,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.0),
//                                     spreadRadius: 0.5,
//                                     blurRadius: 1,
//                                     offset: Offset(
//                                         0, 1), // changes position of shadow
//                                   ),
//                                 ],
//                                 borderRadius: BorderRadius.circular(5)),
//                             child: Image.asset(profile, height: 60.h)),
//                         SizedBox(width: 15),
//                         Column(
//                           children: [
//                             Text(
//                               jaspreet,
//                               style: TextStyle(
//                                   color: Color(0xFF333333),
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: textSize26),
//                             ),
//                             Text(
//                               youLastLogged_,
//                               style: TextStyle(
//                                   color: Color(0xFF666666),
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: textSize14),
//                             ),
//                             SizedBox(height: 10.h),
//                             Text(
//                               timming0603,
//                               style: TextStyle(
//                                   color: Color(0xFF666666),
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: textSize14),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 25.h),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         IntrinsicHeight(
//                             child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             Column(
//                               children: [
//                                 Text(
//                                   num0,
//                                   style: TextStyle(
//                                     color: Color(0xFF666666),
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: textSize20,
//                                   ),
//                                 ),
//                                 SizedBox(height: 5.h),
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.shopping_bag,
//                                       color: Color(0xFF198EDC),
//                                     ),
//                                     SizedBox(width: 5.w),
//                                     Text(
//                                       jobs,
//                                       style: TextStyle(
//                                           color: Color(0xFF666666),
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: textSize16),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                             SizedBox(width: 10),
//                             VerticalDivider(),
//                             SizedBox(width: 10),
//                             Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     free,
//                                     style: TextStyle(
//                                       color: Color(0xFF666666),
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: textSize20,
//                                     ),
//                                   ),
//                                   SizedBox(height: 5.h),
//                                   Row(
//                                     children: [
//                                       Icon(
//                                         Icons.pages_outlined,
//                                         color: Color(0xFF198EDC),
//                                       ),
//                                       SizedBox(width: 5.w),
//                                       Text(
//                                         membership,
//                                         style: TextStyle(
//                                             color: Color(0xFF666666),
//                                             fontWeight: FontWeight.w400,
//                                             fontSize: textSize16),
//                                       ),
//                                     ],
//                                   ),
//                                 ]),
//                           ],
//                         )),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
//                 margin: EdgeInsets.only(top: 10.h),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(cornersRadiusLowest.r),
//                   boxShadow: [_boxShadow()],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           WidgetSpan(
//                             child: Icon(
//                               Icons.person,
//                               size: 28.sp,
//                               color: primaryColorLight,
//                             ),
//                           ),
//                           WidgetSpan(
//                               child: SizedBox(
//                             width: 10.w,
//                           )),
//                           TextSpan(
//                             style: TextStyle(
//                               color: Color(0xFF333333),
//                               fontWeight: FontWeight.w600,
//                               fontSize: textSize16.sp,
//                             ),
//                             text: "Account Details",
//                           ),
//                         ],
//                       ),
//                     ),
//                     CustomTextFormField(
//                       topMargin: 20.h,
//                       labelText: "Name",
//                       autoFocus: false,
//                       icons: Icons.person_outline,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: userName,
//                       autoFocus: false,
//                       icons: Icons.person_outline,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       autoFocus: false,
//                       labelText: email,
//                       icons: Icons.email_outlined,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: phone,
//                       autoFocus: false,
//                       icons: Icons.phone_outlined,
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Text(
//                       "Avatar",
//                       style: TextStyle(
//                         fontSize: textSize16,
//                         color: Color(0xFF333333),
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     SizedBox(height: 10.h),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xffFFFFFF),
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(10),
//                             topRight: Radius.circular(10),
//                             bottomLeft: Radius.circular(10),
//                             bottomRight: Radius.circular(10)),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.blue.withOpacity(0.1),
//                             spreadRadius: 2,
//                             blurRadius: 7,
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: ButtonTheme(
//                         height: 40.h,
//                         minWidth: double.infinity,
//                         child: OutlineButton(
//                           onPressed: () {},
//                           splashColor: Color(0xff198EDC),
//                           borderSide: BorderSide(
//                             color: Color(0xff198EDC),
//                           ),
//                           shape: ContinuousRectangleBorder(
//                               borderRadius: BorderRadius.circular(5)),
//                           child: Text(
//                             "Upload Avatar",
//                             style: TextStyle(
//                               fontSize: textSize16,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xff198EDC),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Text("Use 150x150px image for perfect look.",
//                         style: TextStyle(
//                           fontSize: textSize14,
//                           color: Color(0xFF888888),
//                           fontWeight: FontWeight.w400,
//                         )),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Text(
//                       "Gender",
//                       style: TextStyle(
//                         fontSize: textSize16.sp,
//                         color: Color(0xFF333333),
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     GenderSelection(
//                       femaleImage: NetworkImage(
//                           "https://cdn1.iconfinder.com/data/icons/website-internet/48/website_-_female_user-512.png"),
//                       maleImage: NetworkImage(
//                           "https://icon-library.net/images/avatar-icon/avatar-icon-4.jpg"),
//                       selectedGenderIconBackgroundColor: Colors.amber,
//                       selectedGenderTextStyle: TextStyle(
//                           color: Colors.amber,
//                           fontSize: 19,
//                           fontWeight: FontWeight.bold),
//                       onChanged: (Gender value) {},
//                     ),
//                     SizedBox(
//                       width: 50.w,
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 50.w,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Text.rich(
//                       TextSpan(children: [
//                         TextSpan(
//                             text: "City",
//                             style: TextStyle(
//                               fontSize: textSize16,
//                               color: Color(0xFF333333),
//                               fontWeight: FontWeight.w600,
//                             )),
//                       ]),
//                     ),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Container(
//                         height: 45.h,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: Colors.grey[300]),
//                             borderRadius: BorderRadius.circular(5),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 spreadRadius: 0.5,
//                                 blurRadius: 1,
//                                 // changes position of shadow
//                               ),
//                             ]),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton(
//                             isDense: false,
//                             hint: _cityValue == null
//                                 ? Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 15.h),
//                                     child: Text(
//                                       'Select City',
//                                       style: TextStyle(
//                                         fontSize: textSize16,
//                                         color: Color(0xFF808080),
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   )
//                                 : Text(
//                                     _cityValue,
//                                     style: TextStyle(color: Colors.black),
//                                   ),
//                             isExpanded: true,
//                             iconSize: 30.0,
//                             style: TextStyle(color: Colors.black),
//                             items: [
//                               ' Banglearu',
//                               " punjab",
//                               " jaipur",
//                               " Mumbai",
//                               " Noida",
//                               " Delhi",
//                               " U.P",
//                             ].map(
//                               (val) {
//                                 return DropdownMenuItem<String>(
//                                   value: val,
//                                   child: Text(val),
//                                 );
//                               },
//                             ).toList(),
//                             onChanged: (val) {
//                               setState(
//                                 () {
//                                   _cityValue = val;
//                                 },
//                               );
//                             },
//                           ),
//                         )),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Text.rich(
//                       TextSpan(children: [
//                         TextSpan(
//                             text: "Address",
//                             style: TextStyle(
//                               fontSize: textSize16,
//                               color: Color(0xFF333333),
//                               fontWeight: FontWeight.w600,
//                             )),
//                         TextSpan(
//                             text: "*",
//                             style: TextStyle(
//                               fontSize: textSize16,
//                               color: Color(0xFF333333),
//                               fontWeight: FontWeight.w600,
//                             )),
//                       ]),
//                     ),
//                     SizedBox(height: 10.h),
//                     TextField(
//                       autofocus: false,
//                       maxLines: 5,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey[350]),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Text("About Me",
//                         style: TextStyle(
//                           fontSize: textSize16,
//                           color: Color(0xFF333333),
//                           fontWeight: FontWeight.w600,
//                         )),
//                     SizedBox(height: 10.h),
//                     TextField(
//                       autofocus: false,
//                       maxLines: 10,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.grey[350]),
//                         ),
//                       ),
//                     ),
//                     CustomTextFormField(
//                       topMargin: 20.h,
//                       labelText: "Website",
//                       autoFocus: false,
//                       icons: Icons.insert_link_outlined,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: "Facebook",
//                       autoFocus: false,
//                       icons: FontAwesome.facebook,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       autoFocus: false,
//                       icons: FontAwesome.instagram,
//                       labelText: "Instagram",
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: "Twitter",
//                       autoFocus: false,
//                       icons: FontAwesome.twitter,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: "LinkedIn",
//                       autoFocus: false,
//                       icons: FontAwesome.linkedin,
//                     ),
//                     CustomTextFormField(
//                       labelText: "Youtube",
//                       topMargin: 15.h,
//                       autoFocus: false,
//                       icons: FontAwesome.youtube_play,
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10.h),
//                 padding: EdgeInsets.symmetric(
//                   vertical: 10.h,
//                   horizontal: 15.w,
//                 ),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   // border: Border.all(color: Colors.grey[350]),
//                   color: Colors.white,
//                   boxShadow: [
//                     _boxShadow(),
//                   ],
//                   borderRadius: BorderRadius.circular(5.r),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text.rich(
//                       TextSpan(
//                         children: [
//                           WidgetSpan(
//                             child: Icon(
//                               Icons.lock,
//                               size: 28.sp,
//                               color: Color(0xff198EDC),
//                             ),
//                           ),
//                           WidgetSpan(
//                             child: SizedBox(
//                               width: 10,
//                             ),
//                           ),
//                           TextSpan(
//                             style: TextStyle(
//                               fontSize: textSize16,
//                               color: Color(0xFF333333),
//                               fontWeight: FontWeight.w600,
//                             ),
//                             text: "Password",
//                           ),
//                         ],
//                       ),
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: "New Password",
//                       autoFocus: false,
//                       icons: Icons.lock,
//                     ),
//                     CustomTextFormField(
//                       topMargin: 15.h,
//                       labelText: "Confirm Password",
//                       autoFocus: false,
//                       icons: Icons.lock,
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     PrimaryButton(
//                       text: "Update",
//                       onPressed: () {},
//                       width: double.infinity,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 60.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DashBoardNavigationList {
//   final BuildContext context;
//
//   DashBoardNavigationList(this.context);
//
//   static List<Widget> myAccountList = [
//     CustomListTile(
//       leadingIcon: Icons.dashboard,
//       title: profile,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.person_pin_circle_rounded,
//       title: profilePublicView,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.card_membership,
//       title: membership,
//     ),
//     SizedBox(
//       height: 20.h,
//     )
//   ];
//   static List<Widget> myJobsList = [
//     CustomListTile(
//       leadingIcon: Icons.roofing,
//       title: myCompanies,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.shopping_bag_outlined,
//       title: myJobs,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.access_time,
//       title: pendingJobs,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.tv_off_rounded,
//       title: hiddenJobs,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.error,
//       title: expiredJobs,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.assistant_direction,
//       title: resubmittedJobs,
//       trailingIcon: Icons.attractions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.favorite,
//       title: favoriteUsers,
//       trailingIcon: Icons.attractions,
//     ),
//   ];
//   static List<Widget> accountList = [
//     CustomListTile(
//       leadingIcon: Icons.receipt,
//       title: transactions,
//     ),
//     CustomListTile(
//       leadingIcon: Icons.logout,
//       title: logout,
//     ),
//   ];
// }
//
// class CustomListTile extends StatelessWidget {
//   final IconData leadingIcon, trailingIcon;
//   final String title;
//   final onTap;
//
//   const CustomListTile(
//       {@required this.leadingIcon,
//       @required this.title,
//       this.trailingIcon,
//       this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       dense: true,
//       contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//       leading: Icon(leadingIcon),
//       onTap: onTap,
//       title: Text(
//         title,
//         style: TextStyle(fontSize: textSize14.sp),
//       ),
//       trailing: Icon(
//         trailingIcon,
//         color: Color(0xff198EDC),
//       ),
//     );
//   }
// }
