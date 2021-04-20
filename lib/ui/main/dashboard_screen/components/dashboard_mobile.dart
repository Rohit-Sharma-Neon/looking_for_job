import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/components/galobal_components/web_header.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/bottom_web_banner.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/job_categories_component.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/custom_text_form_ta.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/drawer/menu_widget.dart';

class DashBoardMobileComponent extends StatefulWidget {
  @override
  _DashBoardMobileComponentState createState() =>
      _DashBoardMobileComponentState();
}

class _DashBoardMobileComponentState extends State<DashBoardMobileComponent> {
  bool isSwitched = false;
  final itemAppTheme = AppTheme.values[0];

  String title = "";

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
      GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    return SliderMenuContainer(
      drawerIconColor: Colors.transparent,
      drawerIconSize: 0,
      appBarColor: bgScaffoldColor,
      appBarHeight: 0,
      // appBarColor: Colors.white,
      key: _sliderMenuContainerStateKey,
      sliderMenuOpenSize: 280,
      title: Text(
        title,
        style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
      ),
      sliderMenu: MenuWidget(
        drawerKey: _sliderMenuContainerStateKey,
      ),
      sliderMain: SingleChildScrollView(
        child: Column(
          children: [
            /*Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    isSwitched = value;
                    isSwitched
                        ? BlocProvider.of<ThemeBloc>(context)
                            .dispatch(ThemeChanged(theme: AppTheme.values[1]))
                        : BlocProvider.of<ThemeBloc>(context)
                            .dispatch(ThemeChanged(theme: AppTheme.values[0]));
                  },
                ),*/
            webHeader(_sliderMenuContainerStateKey),
            Container(
              color: Colors.grey,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    findAJob,
                    style: TextStyle(
                      fontSize: 36.sp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    simpleFastAndEfficient,
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormTA(
                    hintText: "Job title",
                  ),
                  CustomTextFormTA(
                    hintText: "Location",
                  ),
                  SizedBox(height: 18.h),
                  PrimaryButton(
                    height: 50.h,
                    width:double.infinity,
                      text:search,

                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
            jobCategoriesComponent(),
            latestJobsComponent(),
            kIsWeb ? bottomWebBanner() : Container(),
          ],
        ),
      ),
    );
  }
}
