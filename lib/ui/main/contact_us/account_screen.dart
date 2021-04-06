import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcoountScreen extends StatefulWidget {
  @override
  _AcoountScreenState createState() => _AcoountScreenState();
}

class _AcoountScreenState extends State<AcoountScreen> {
  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Name",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
                TextSpan(
                    text: " *",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    color: Colors.grey[200],
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.grey[600],
                        )),
                  ),
                  // VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: " User Name",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
                TextSpan(
                    text: " *",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    color: Colors.grey[200],
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.grey[600],
                        )),
                  ),
                  // VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Email Address",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
                TextSpan(
                    text: " *",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    color: Colors.grey[200],
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.grey[600],
                        )),
                  ),
                  // VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Phone Number",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
                TextSpan(
                    text: " *",
                    style: TextStyle(
                        fontSize: textSize20.nsp, color: Colors.black)),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[350]),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 1,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    color: Colors.grey[200],
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.phone_outlined,
                          color: Colors.grey[600],
                        )),
                  ),
                  // VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Avatar",
              style: TextStyle(
                  fontSize: textSize20.nsp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.h),
            ButtonTheme(
              height: 50.h,
              minWidth: 300.w,
              child: OutlineButton(
                onPressed: () {},
                splashColor: Color(0xff198EDC),
                borderSide: BorderSide(
                  color: Color(0xff198EDC),
                ),
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Upload Avatar",
                  style: TextStyle(
                    fontSize: textSize20.nsp,
                    color: Color(0xff198EDC),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text("Use 150x150px image for perfect look.",
                style: TextStyle(fontSize: textSize16.nsp, color: Colors.grey)),
                SizedBox(height: 40.h,),
                Text("Gender",style: TextStyle(fontSize: textSize20.nsp),),
                Row(children: [
                    RadioListTile(
              groupValue: radioItem,
              title: Text('Male'),
              value: 'Item 3',
              onChanged: (val) {
                setState(() {
                  radioItem = val;
                });
              },
            ),
 
           RadioListTile(
              groupValue: radioItem,
              title: Text('Female'),
              value: 'Item 2',
              onChanged: (val) {
                setState(() {
                  radioItem = val;
                });
              },
            ),
                ],),
                  RadioListTile(
              groupValue: radioItem,
              title: Text('Other'),
              value: 'Item 3',
              onChanged: (val) {
                setState(() {
                  radioItem = val;
                });
              },
            ),
          ]),
        ),
      ),
    );
  }
}
