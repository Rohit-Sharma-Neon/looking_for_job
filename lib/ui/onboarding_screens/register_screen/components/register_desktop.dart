// import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
// import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/primary_button.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

class RegisterDesktopComponent extends StatefulWidget {
  @override
  _RegisterDesktopComponentState createState() =>
      _RegisterDesktopComponentState();
}

class _RegisterDesktopComponentState extends State<RegisterDesktopComponent> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMeFlag = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: 400.w,
            color: Color(0xFFF8F8F8),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 70.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Register", style: TextStyle(fontSize: 35.nsp)),
                Row(
                  children: [
                    Text("Home", style: TextStyle(fontSize: 12.nsp)),
                    SizedBox(width: 5.w),
                    Icon(Icons.arrow_forward_ios, size: 10.nsp),
                    SizedBox(width: 5.w),
                    Text("Register", style: TextStyle(fontSize: 12.nsp)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Let's create your account!",
                  style:
                      TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Color(0xFF424242)),
                    ),
                    InkWell(
                      child: Text(
                        "  Log In!",
                        style: TextStyle(color: Color(0xFF1492E5)),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginPage()),
                          ModalRoute.withName('/'),
                        );
                      },
                    ),
                  ],
                ),

                /*Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 15.h),
                  child: CustomRadioButton(
                    width: 140.w,
                    height: 40.h,
                    elevation: 0,
                    absoluteZeroSpacing: true,
                    unSelectedBorderColor: Colors.transparent,
                    unSelectedColor: Theme.of(context).canvasColor,
                    buttonLables: [
                      'Job Seeker',
                      'Employer',
                    ],
                    buttonValues: [
                      'Job Seeker',
                      'Employer',
                    ],
                    buttonTextStyle: ButtonTextStyle(
                        selectedColor: Colors.white,
                        unSelectedColor: Colors.black,
                        textStyle: TextStyle(fontSize: 15.nsp)),
                    radioButtonValue: (value) {
                      print(value);
                    },
                    selectedColor: Theme.of(context).primaryColor,
                  ),
                ),*/

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                      ),
                      labelText: 'Full Name',
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                      ),
                      labelText: 'Username',
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'Email Address',
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: Row(
                    children: <Widget>[
                      new GestureDetector(
                        child: new Row(
                          children: <Widget>[
                            new Checkbox(
                              value: _rememberMeFlag,
                              onChanged: (value) => setState(() {
                                _rememberMeFlag = !_rememberMeFlag;
                              }),
                            ),
                            new Text(
                              "By clicking on “Register” button you are agree\nto ourTerms & Condition",
                              style: new TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                        onTap: () => setState(() {
                          _rememberMeFlag = !_rememberMeFlag;
                        }),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  // child: RaisedButton(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: 140.w, vertical: 12.h),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(5.0),
                  //   ),
                  //   color: Color(0xFF1492E5),
                  //   textColor: Color(0xFFffffff),
                  //   child: Text("Register"),
                  //   onPressed: () {
                  //     if (_formKey.currentState.validate()) {
                  //       _formKey.currentState.save();
                  //     }
                  //   },
                  // ),
                  child: PrimaryButton(
                    height: 50.h,
                    width: 200.w,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                    text: ("Register"),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: RaisedButton(
                //       color: Color(0xFF1492E5),
                //       textColor: Color(0xFFffffff),
                //       child: Text("Register"),
                //       onPressed: () {
                //         // your code
                //       }),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
