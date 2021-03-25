import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/constants/theme/app_theme.dart';
import 'package:lookingforjob_flutter/drawer/menu_widget.dart';
import 'package:lookingforjob_flutter/widgets/custom_drop_down.dart';

class DashBoardMobileComponent extends StatefulWidget {
  @override
  _DashBoardMobileComponentState createState() => _DashBoardMobileComponentState();
}

class _DashBoardMobileComponentState extends State<DashBoardMobileComponent> {
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
    return SliderMenuContainer(
      drawerIconColor: Colors.transparent,
      drawerIconSize: 0,
      appBarColor: bgScaffoldColor,
      appBarHeight: 0,
      // appBarColor: Colors.white,
      key: _key,
      sliderMenuOpenSize: 280,
      title: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      sliderMenu: MenuWidget(
        drawerKey: _key,
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
                  Image.asset(
                    appLogoWithName,
                    height: 30.h,
                  ),
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
                  )
                ],
              ),
            ),
            /*Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: scaffoldHorizontalPadding.w),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      Text(
                        weFound_Jobs,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.nsp,
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: home,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(Icons.arrow_right_outlined),
                            ),
                            TextSpan(
                              text: allCategories,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),*/
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    findAJob,
                    style: TextStyle(
                      fontSize: 38,
                    ),
                  ),
                  Text(
                    simpleFastAndEfficient,
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: TypeAheadField(
                      textFieldConfiguration: TextFieldConfiguration(
                          cursorColor: Colors.grey,
                          controller: _typeAheadController,
                          autofocus: false,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 18),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Color(0xff767676),
                              ),
                              suffixIcon: InkWell(
                                  onTap: () => _typeAheadController.text = "",
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  )),
                              /*prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Image.asset(
                                        "assets/images/ic_search.png"),
                                  ),*/
                              prefixIconConstraints:
                              BoxConstraints(minHeight: 20, maxHeight: 22)
                            //Icon(Icons.search, color: Color(0xff767676)),
                          ),
                          onChanged: (value) {}),
                      suggestionsCallback: (pattern) async {
                        return await UserNameData.getSuggestions(pattern);
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(suggestion),
                        );
                      },
                      onSuggestionSelected: (suggestion) {
                        setState(() {
                          _typeAheadController.text = suggestion;
                          // userPhone = suggestion.mobile;
                          // userName = suggestion.name;
                          // userStatus = suggestion.status;
                        });
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: TypeAheadField(
                        textFieldConfiguration: TextFieldConfiguration(
                            cursorColor: Colors.grey,
                            controller: _typeAheadController,
                            autofocus: false,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Color(0xff767676),
                                ),
                                suffixIcon: _typeAheadController.text == null
                                    ? Container()
                                    : InkWell(
                                  onTap: () =>
                                  _typeAheadController.text = "",
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  ),
                                ),
                                /*prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Image.asset(
                                          "assets/images/ic_search.png"),
                                    ),*/
                                prefixIconConstraints:
                                BoxConstraints(minHeight: 20, maxHeight: 22)
                              //Icon(Icons.search, color: Color(0xff767676)),
                            ),
                            onChanged: (value) {}),
                        suggestionsCallback: (pattern) async {
                          return await UserNameData.getSuggestions(pattern);
                        },
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(suggestion),
                          );
                        },
                        onSuggestionSelected: (suggestion) {
                          setState(() {
                            _typeAheadController.text = suggestion;
                            // userPhone = suggestion.mobile;
                            // userName = suggestion.name;
                            // userStatus = suggestion.status;
                          });
                        },
                      )),
                ],
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
                  ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    "Sports Officer cum Warden",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: OutlineButton(
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Full Time",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.add_location),
                                Text(
                                  "Anand International College of Engineering",
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.add_location),
                                Text("Jaipur"),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.grey.shade800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    appLogoWithName,
                    height: 40,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Our Aim is to Serve All Kinds of Jobs in Corporate Industries and the IT sector and all Business and Job Seekers are to easily find their deserve Platform.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "My Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Helpful Links",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "FAQ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Feedback",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Information",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
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