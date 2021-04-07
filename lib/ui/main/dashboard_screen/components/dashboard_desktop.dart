import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/bottom_web_banner.dart';
import 'package:lookingforjob_flutter/components/job_seeker_dashboard_components/latest_jobs_component.dart';
import 'package:lookingforjob_flutter/constants/custom_text_form_ta.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/widgets/custom_drop_down.dart';

class DashBoardDesktopComponent extends StatefulWidget {
  @override
  _DashBoardDesktopComponentState createState() =>
      _DashBoardDesktopComponentState();
}

class _DashBoardDesktopComponentState extends State<DashBoardDesktopComponent> {
  bool isSwitched = false;
  final itemAppTheme = AppTheme.values[0];
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  String title = "";
  String _selectedValue;

  final TextEditingController _typeAheadController = TextEditingController();

  String _category;
  String _currentSelectedValue;

  List<String> jobsList = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Image.asset(
                  appLogoWithName,
                  height: 30.h,
                ),
                SizedBox(width: 10.w),
                CountryCodePicker(
                  searchDecoration: InputDecoration(
                    hintText: search,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.8),
                    ),
                  ),
                  onChanged: print,
                  initialSelection: 'IN',
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                Spacer(),
                CustomDropdown<String>(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  height: double.infinity,
                  items: ['A', 'B', 'C'],
                  onChanged: (val) => _selectedValue = val,
                  center: true,
                ),
                SizedBox(width: 5.w),
                InkWell(
                  onTap: () => _key.currentState.openDrawer(),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h),
                    height: double.infinity,
                    padding: EdgeInsets.all(8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                    child: Icon(Icons.menu),
                  ),
                ),
                SizedBox(width: 10.w),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(findAJob, style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white)),
                  Text(
                    simpleFastAndEfficient,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 200,child: CustomTextFormTA()),
                      SizedBox(width: 200,child: CustomTextFormTA()),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            jobCategories,
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: jobsList.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.4,
                    ),
                  ),
                ),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.opacity),
                  title: Text(
                    jobsList[index],
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Icon(Icons.navigate_next),
                ),
              );
            },
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            padding:
                EdgeInsets.symmetric(horizontal: scaffoldHorizontalPadding),
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Latest Jobs",
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Browse All Jobs",
                    style: TextStyle(color: Colors.black),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
                latestJobsComponent(),
              ],
            ),
          ),
          bottomWebBanner(),
        ],
      ),
    );
  }
}

class UserNameData {
  static final List<String> states = [
    'FURLEEN SINGH',
    'VIKAS GUPTA',
    'ABHISHEK GUPTA',
    'BHUVNESH MATHUR',
    'ROHIT SHARMA',
    'ANKIT SHARMA',
    'JASPREET SINGH',
    'GHANENDRA THAKUR',
    'BHUPESH SINGH',
    'RAJEEV RATHORE',
    'NISCHAL VERMA',
    'VIVEK SINGH',
    'RISHAB THAKUR',
    'ANIL MATHUR',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(states);
    matches.retainWhere(
      (s) => s.toLowerCase().contains(
            query.toLowerCase(),
          ),
    );
    return matches;
  }
}
