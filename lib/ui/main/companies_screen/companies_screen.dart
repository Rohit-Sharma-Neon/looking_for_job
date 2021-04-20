import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';



class CompaniesScreen extends StatefulWidget {
  @override
  _CompaniesScreenState createState() => _CompaniesScreenState();
}

class _CompaniesScreenState extends State<CompaniesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
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
    );
  }
}
