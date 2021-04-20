import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
    return Scaffold(
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
          child: SafeArea(
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
                      border: Border.all(color: Colors.grey[300]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
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
                                  spreadRadius: 4,
                                  blurRadius: 1,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment:Alignment.topLeft,
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/appleIcon.png'),
                                    height: 80.h,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Software Solution pvt. ltd (1)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: textSize16),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,itemSize: 12,
                                allowHalfRating: true,
                                itemCount: 5,

                                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(width: 8,),
                              Text ("325 Google reviews",style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.w600),)
                            ],
                          ),
                                SizedBox(height: 5.h),
                                Align(alignment : Alignment.centerLeft,child: Text("Software Company In Jaipur,Rajasthan")),
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
