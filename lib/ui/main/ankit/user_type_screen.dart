import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class UserTypeScreen extends StatefulWidget {
  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 90,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  child: Image.asset(
                appLogoWithName,
                height: 80,
              )),
            ),
            SizedBox(height: 55.h),
            Text("Who are you?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: textSize26),),
            SizedBox(height: 10.h),
            Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",style: TextStyle(fontSize: textSize14),),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF11224E),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_outline,color: Color(0xFF2CA5DA)),
                      SizedBox(width: 17.w,),
                      Text("JOB SEEKERS",style: TextStyle(color: Color(0xFF2CA5DA)),),
                      SizedBox(width: 90.w,),
                      CircleAvatar(
                        backgroundColor: Color(0xFF2CA5DA) ,
                        child: Icon(Icons.double_arrow,color: Colors.white,size: 20,),
                      )
                    ],
                  ),
                  Text("Finding a job here never\nbeen easier than before",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF0D3044),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.apartment_rounded,color: Color(0xFF26D39E)),
                      SizedBox(width: 17.w,),
                      Text("COMPANY",style: TextStyle(color: Color(0xFF26D39E)),),
                      SizedBox(width: 107.w,),
                      CircleAvatar(
                        backgroundColor: Color(0xFF26D39E) ,
                        child: Icon(Icons.double_arrow,color: Colors.white,size: 20,),
                      )
                    ],
                  ),
                  Text("Finding a job here never\nbeen easier than before",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
