import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';

class PostJobScreen extends StatefulWidget {
  @override
  _PostJobScreenState createState() => _PostJobScreenState();
}

class _PostJobScreenState extends State<PostJobScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentStep = 0;
  String _cityValue;
  String selected = "first";
  String _chosenValue;
  String _chosenValue2;
  String _chosenValue3;
  PickedFile _imageFile;
  String dropdownValue = 'One';
  final ImagePicker _picker = ImagePicker();
  StepperType stepperType = StepperType.horizontal;

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
      key: _scaffoldKey,
      appBar: BaseAppBar2(
        title: 'Dashboard',
        leadingIcon: Icons.menu,
        scaffoldKey: _scaffoldKey,
      ),
      drawer: BaseDrawer(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: StepperType.horizontal,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: Text(
                      "Company information ",
                      style: TextStyle(
                          fontSize: textSize20, fontWeight: FontWeight.w600),
                    ),
                    content: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [_boxShadow()],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Company Logo",
                                style: TextStyle(
                                    fontSize: textSize15,
                                    fontWeight: FontWeight.w600),
                              )),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              _imagePicker(context);
                            },
                            child: Stack(
                              // ignore: deprecated_member_use
                              overflow: Overflow.visible,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 85,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: _imageFile == null
                                            ? AssetImage(dummy_profile2)
                                            : FileImage(
                                                File(_imageFile.path),
                                              ),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 10,
                                          blurRadius: 10,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Color(0xFF286472), width: 1),
                                      shape: BoxShape.circle),
                                ),
                                Positioned(
                                  bottom: -8,
                                  right: 105,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.edit,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Company Name",
                                  style: TextStyle(
                                      fontSize: textSize13,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.red[800]))
                            ]),
                          ),
                          SizedBox(height: 5),
                          CustomTextFormField(
                            icons: Icons.work_outline,
                          ),
                          SizedBox(height: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Phone Number",
                                  style: TextStyle(
                                      fontSize: textSize13,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.red[800]))
                            ]),
                          ),
                          SizedBox(height: 5),
                          CustomTextFormField(
                              // textInputType: TextInputType.number,
                              icons: Icons.phone),
                          SizedBox(height: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Email",
                                  style: TextStyle(
                                      fontSize: textSize13,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.red[800]))
                            ]),
                          ),
                          SizedBox(height: 5),
                          CustomTextFormField(
                              // textInputType: TextInputType.emailAddress,
                              icons: Icons.email_outlined),
                          SizedBox(height: 20),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Company Description",
                                  style: TextStyle(
                                      fontSize: textSize13,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.black)),
                            ]),
                          ),
                          SizedBox(height: 5),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(5.r),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    // changes position of shadow
                                  ),
                                ]),
                            child: TextField(
                                autofocus: false,
                                maxLines: 10,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[200])))),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: Text(
                      "Job Descripition",
                      style: TextStyle(
                          fontSize: textSize20, fontWeight: FontWeight.w600),
                    ),
                    content: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [_boxShadow()],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 5.h),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Title",
                                  style: TextStyle(
                                      fontSize: textSize14,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20.sp,
                                      color: Colors.red[800]))
                            ]),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            height: 50.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[350],
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 0,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Description",
                                  style: postAJobSubHeadingTextStyle),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20.sp,
                                      color: Colors.red[800])),
                            ]),
                          ),
                          SizedBox(height: 5.h),
                          TextField(
                              autofocus: false,
                              maxLines: 15,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[350])))),
                          SizedBox(height: 5.h),
                        ],
                      ),
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: Text(
                      "Job details",
                      style: TextStyle(
                          fontSize: textSize20, fontWeight: FontWeight.w600),
                    ),
                    content: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [_boxShadow()],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Job Type",
                                  style: TextStyle(
                                      fontSize: textSize14,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.red[800])),
                            ]),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'first';
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: selected == 'first'
                                          ? Colors.blue
                                          : Colors.transparent,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "1 - 2",
                                    style: TextStyle(
                                        color: selected == 'first'
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'Second';
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: selected == 'Second'
                                          ? Colors.blue
                                          : Colors.transparent,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "2 - 5",
                                    style: TextStyle(
                                        color: selected == 'Second'
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'third';
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: selected == 'third'
                                          ? Colors.blue
                                          : Colors.transparent,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "5 - 10",
                                    style: TextStyle(
                                        color: selected == 'third'
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'fourth';
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: selected == 'fourth'
                                          ? Colors.blue
                                          : Colors.transparent,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "10+",
                                    style: TextStyle(
                                        color: selected == 'fourth'
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          // Container(
                          //   padding: EdgeInsets.symmetric(horizontal: 10),
                          //     height: 50,
                          //     width: 300,
                          //     decoration: BoxDecoration(
                          //         border: Border.all(color: Colors.grey[350]),
                          //         borderRadius: BorderRadius.circular(5),
                          //         color: Colors.white,
                          //         boxShadow: [
                          //           BoxShadow(
                          //             color: Colors.grey.withOpacity(0.1),
                          //             spreadRadius: 1,
                          //             blurRadius: 0,
                          //             offset: Offset(0, 1),
                          //           )
                          //         ]),
                          //     child: DropdownButtonHideUnderline(
                          //       child: DropdownButton(
                          //         isDense: false,
                          //         hint: _jobTypeValue == null
                          //             ? Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 20),
                          //           child: Text(
                          //             'Full Time',
                          //             style: TextStyle(
                          //                 fontSize: textSize18,
                          //                 fontWeight: FontWeight.w400),
                          //           ),
                          //         )
                          //             : Text(
                          //           _jobTypeValue,
                          //           style: TextStyle(
                          //               color: Colors.grey[600],
                          //               fontWeight: FontWeight.w500),
                          //         ),
                          //         isExpanded: true,
                          //         iconSize: 30.0,
                          //         iconEnabledColor: Colors.grey,
                          //         style: TextStyle(
                          //             color: Colors.grey[600],
                          //             fontWeight: FontWeight.w500),
                          //         items: [
                          //           ' Full Time',
                          //           " Part Time",
                          //           " Temporary",
                          //           " Permanent",
                          //           " Internship",
                          //           " Freelancer",
                          //           " Remotely",
                          //         ].map(
                          //               (val) {
                          //             return DropdownMenuItem<String>(
                          //               value: val,
                          //               child: Text(val),
                          //             );
                          //           },
                          //         ).toList(),
                          //         onChanged: (val) {
                          //           setState(
                          //                 () {
                          //               _jobTypeValue = val;
                          //             },
                          //           );
                          //         },
                          //       ),
                          //     )),
                          SizedBox(height: 23),
                          Divider(color: Colors.grey, thickness: 0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Salary offered",
                                      style: TextStyle(
                                          fontSize: textSize14,
                                          color: Colors.black)),
                                  Text("Min Salary",
                                      style: TextStyle(
                                          fontSize: textSize10,
                                          color: Colors.grey[600])),
                                ],
                              ),
                              Text("Salary Type",
                                  style: TextStyle(
                                      fontSize: textSize14,
                                      color: Colors.black)),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                focusColor: Colors.white,
                                value: _chosenValue,
                                elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  '10000',
                                  '20000',
                                  '30000',
                                  '40000',
                                  '50000',
                                  '60000',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Min Salary",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    _chosenValue = value;
                                  });
                                },
                              ),
                              DropdownButton<String>(
                                focusColor: Colors.white,
                                value: _chosenValue2,
                                elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  'Per Month',
                                  'Per Day',
                                  'Per Week',
                                  'Per Hour',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Salary Type",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    _chosenValue2 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text("Max Salary",
                              style: TextStyle(
                                  fontSize: textSize10,
                                  color: Colors.grey[600])),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                focusColor: Colors.white,
                                value: _chosenValue3,
                                //elevation: 5,
                                style: TextStyle(color: Colors.white),
                                iconEnabledColor: Colors.black,
                                items: <String>[
                                  '10000',
                                  '20000',
                                  '30000',
                                  '40000',
                                  '50000',
                                  '60000',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                                hint: Text(
                                  "Max Salary",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    _chosenValue3 = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey, thickness: 0),
                          SizedBox(height: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "City",
                                  style: TextStyle(
                                      fontSize: textSize14,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " *",
                                  style: TextStyle(
                                      fontSize: textSize20.sp,
                                      color: Colors.red[800])),
                            ]),
                          ),
                          SizedBox(height: 5),
                          Container(
                              height: 50.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[350]),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 0,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: false,
                                  hint: _cityValue == null
                                      ? Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            'Select City',
                                            style: TextStyle(
                                                fontSize: textSize18.nsp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      : Text(
                                          _cityValue,
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  iconEnabledColor: Colors.grey,
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500),
                                  items: [
                                    ' Banglearu',
                                    " punjab",
                                    " jaipur",
                                    " Mumbai",
                                    " Noida",
                                    " Delhi",
                                    " U.P",
                                  ].map(
                                    (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        _cityValue = val;
                                      },
                                    );
                                  },
                                ),
                              )),
                          SizedBox(height: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Application Url",
                                  style: TextStyle(
                                      fontSize: textSize14,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "",
                                  style: TextStyle(
                                      fontSize: textSize20,
                                      color: Colors.red[800])),
                            ]),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            height: 50.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[350],
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 0,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "http://",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.w500),
                                  suffixIcon: Icon(Icons.link),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text("Tags",
                              style: TextStyle(
                                  fontSize: textSize14, color: Colors.black)),
                          SizedBox(height: 5.h),
                          Container(
                            height: 50.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[350],
                                ),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 0,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: TextField(
                                autofocus: false,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      /// FLoating Action Buttton
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.list),
      //   onPressed: switchStepsType,
      // ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2
        ?
        // ignore: unnecessary_statements
        setState(() => _currentStep += 1)
        : null;
  }

  cancel() {
    _currentStep > 0
        ?
        // ignore: unnecessary_statements
        setState(() => _currentStep -= 1)
        : null;
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  void _imagePicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
              child: Container(
                  child: new Wrap(children: <Widget>[
            new ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("gallery"),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                  // getImageGallery();
                  Navigator.of(context).pop();
                }),
            new ListTile(
                leading: new Icon(Icons.photo_camera),
                title: new Text("camera"),
                onTap: () {
                  // getImage();
                  takePhoto(ImageSource.camera);

                  Navigator.of(context).pop();
                })
          ])));
        });
  }
}
