// import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
// import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

class RegisterMobileComponent extends StatefulWidget {
  @override
  _RegisterMobileComponentState createState() =>
      _RegisterMobileComponentState();
}

class _RegisterMobileComponentState extends State<RegisterMobileComponent> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMeFlag = false, checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's create your account!",
                  style:
                      TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                SizedBox(height: 20),
                /*CustomRadioButton(
                  defaultSelected: "Job Seeker",
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
                SizedBox(height: 10.h,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Color(0xFF424242),
                        ),
                      ),
                      TextSpan(
                        text: " Log In!",
                        style: TextStyle(
                          color: Color(0xFF0691CE),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
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
                ),
                SizedBox(height: 10.h,),
                CheckboxListTile(
                  title: Text("By clicking on “Register” button you are agree to ourTerms & Condition"),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                /*Padding(
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
                              "By clicking on “Register” button you are agree to ourTerms & Condition",
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
                ),*/
                SizedBox(height: 20.h),
                MaterialButton(
                  height: 40.h,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color(0xFF1492E5),
                  textColor: Color(0xFFffffff),
                  child: Text("Register"),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                    }
                  },
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
        ),
      ],
    );
  }
}
