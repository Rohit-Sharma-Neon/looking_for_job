import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import '../../../components/galobal_components/web_header.dart';
import '../../../constants/colors.dart';
import '../../../drawer/menu_widget.dart';


class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              mainAxisSize: MainAxisSize.min,
              children: [
                webHeader(_sliderMenuContainerStateKey),
                SizedBox(height: 45.h),
                Container(
                    padding: EdgeInsets.all(5.h),
                    margin: EdgeInsets.symmetric(
                        horizontal: scaffoldHorizontalPadding.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: ' Search...',
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
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          debugPrint("");
                        },
                        child: Container(
                            padding: EdgeInsets.all(15.h),
                            margin: EdgeInsets.symmetric(
                                horizontal: scaffoldHorizontalPadding+2.w, vertical: 15.h),
                            width: double.infinity,
                            height: 200.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/gallary.png'),
                                  height: 50.h,
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  "Dabhand Solution pvt. ltd (1)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            )),
                      );
                    }),
                SizedBox(height: 15.h),
                Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    alignment: Alignment.center,
                    child: new SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add),
                      onPressed: () {
                        print("Cliked");
                      },
                    )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
