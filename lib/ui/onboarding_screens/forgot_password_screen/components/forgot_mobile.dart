import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotMobileComponent extends StatefulWidget {
  @override
  _ForgotMobileComponentState createState() => _ForgotMobileComponentState();
}

class _ForgotMobileComponentState extends State<ForgotMobileComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(flex: 1),
            Image.asset(
              appLogoWithName,
              height: 50,
            ),
            Spacer(flex: 1),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.headline1
                    //TextStyle(fontSize: 25.nsp, fontWeight: FontWeight.bold),
                    ,
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle,
                      ),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 15.h),
                  MaterialButton(
                    height: 40.h,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Color(0xFF0691CE),
                    textColor: Color(0xFFffffff),
                    child: Text("Request Password"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
