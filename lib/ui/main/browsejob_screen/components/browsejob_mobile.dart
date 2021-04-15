import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/components/galobal_components/web_header.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/bottom_web_banner.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/job_categories_component.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/custom_text_form_ta.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/drawer/menu_widget.dart';


class BrowseJobMobile extends StatefulWidget {
  @override
  _BrowseJobMobileState createState() => _BrowseJobMobileState();
}

class _BrowseJobMobileState extends State<BrowseJobMobile> {
  bool isSwitched = false;
  final itemAppTheme = AppTheme.values[0];

  String title = "";

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
  GlobalKey<SliderMenuContainerState>();

  final TextEditingController _typeAheadController = TextEditingController();

  String _category;
  String _currentSelectedValue;

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
        style: TextStyle(fontSize: 22.nsp, fontWeight: FontWeight.w700),
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
                      fontSize: 36.nsp,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    simpleFastAndEfficient,
                    style: TextStyle(fontSize: 22.nsp, color: Colors.white),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormTA(
                    hintText: "Job title",
                  ),
                  CustomTextFormTA(
                    hintText: "Location",
                  ),
                  SizedBox(height: 18.h),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(primaryRoundButtonAndTextField),
                    ),
                    minWidth: double.infinity,
                    onPressed: () {},
                    height: 50.h,
                    child: Text(
                      search,
                      style: TextStyle(
                          fontSize: 20.nsp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    color: primaryColorLight,
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
