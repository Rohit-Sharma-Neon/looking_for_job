import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';



class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  String dropdownValue = 'One';

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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
                  margin: EdgeInsets.only(top: 100.h),
                  height: 410.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(0),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("All Transactions", style: TextStyle(fontSize: 22.nsp),),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Display", style: TextStyle(fontSize: 18.nsp),),
                          SizedBox(width: 10.w),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_drop_down_outlined),
                            iconSize: 24.nsp,
                            elevation: 16,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1.h,
                              color: Colors.black,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Search", style: TextStyle(fontSize: 16.nsp),),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              child: TextField(
                                cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                                      ),
                                      contentPadding:EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
                                      border: OutlineInputBorder()
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        height: 65.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(0),
                          boxShadow: [
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Job Title", style: TextStyle(color: Colors.white, fontSize: 16.nsp),),
                            Text("Amount", style: TextStyle(color: Colors.white, fontSize: 16.nsp),),
                            Text("Premium", style: TextStyle(color: Colors.white, fontSize: 16.nsp),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text("No result found.", style: TextStyle(fontSize: 16.nsp),),
                      SizedBox(height: 25.h),
                      Text("No result found.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.nsp),),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Previous", style: TextStyle(fontSize: 16.nsp),),
                          SizedBox(width: 15.w),
                          Text("Next", style: TextStyle(fontSize: 16.nsp),),
                        ],
                      ),
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

