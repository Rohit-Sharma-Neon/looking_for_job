import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/bottom_web_banner.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/job_categories_component.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/custom_text_form_ta.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';

class BrowseJobMobile extends StatefulWidget {
  @override
  _BrowseJobMobileState createState() => _BrowseJobMobileState();
}

class _BrowseJobMobileState extends State<BrowseJobMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isSwitched = false;
  final itemAppTheme = AppTheme.values[0];

  String title = "";

  GlobalKey<SliderMenuContainerState> _sliderMenuContainerStateKey =
      GlobalKey<SliderMenuContainerState>();

  final TextEditingController _typeAheadController = TextEditingController();

  String _category;
  String _currentSelectedValue;

  BoxShadow _boxShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 2,
      blurRadius: 2,
      offset: Offset(0, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      key: _scaffoldKey,
      appBar: BaseAppBar2(
        title: 'Dashboard',
        leadingIcon: Icons.menu,
        scaffoldKey: _scaffoldKey,
      ),
      drawer: BaseDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.teal[200],
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              child: Column(
                children: [
                  Text(
                    findAJob,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: textSize28,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    simpleFastAndEfficient,
                    style: TextStyle(  fontSize: textSize20, color: Colors.white),
                  ),
                  SizedBox(height: 15.h),
                  CustomTextFormTA(
                    hintText: "Job title",
                  ),
                  CustomTextFormTA(
                    hintText: "Location",
                  ),
                  SizedBox(height: 18.h),
                  PrimaryButton(
                    text: search,
                    height: 50.h,
                    width: double.infinity,
                    onPressed: () {},
                  ),
                  SizedBox(height: 20.h),
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
