import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/components/dashboard_mobile.dart';
import 'package:lookingforjob_flutter/ui/main/home_screen/home_screen.dart';


class UserTypeScreen extends StatefulWidget {
  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(signinbg),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF5B4DBC),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          spreadRadius: 1.0,
                        ),
                      ]),
                  child: Image.asset(
                    lookingjoblogo,
                    height: 140.h,
                    width: 80.w,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'LOOKING FOR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textSize20,
                              color: Color(0xFF1492E5)),
                        ),
                        Text(
                          ' JOB',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textSize20,
                              color: Color(0xFF19E39E)),
                        ),
                      ],
                    ),
                    Text(
                      'YOUR ONLY SOURCE FOR YOUR DREAM JOB',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: textSize8,
                          color: Color(0xFFE5D2FF)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 55.h),
            Text("Who are you?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: textSize26,color: Colors.white),),
            SizedBox(height: 10.h),
            Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",style: TextStyle(fontSize: textSize14,color: Colors.white),),
            SizedBox(height: 20.h),
            InkWell(
              onTap: (){
                Navigator.push(context,  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        DashBoardMobileComponent()),);
              },
              child: Container(
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
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: (){
                Navigator.push(context,  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomeScreen()),);
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
