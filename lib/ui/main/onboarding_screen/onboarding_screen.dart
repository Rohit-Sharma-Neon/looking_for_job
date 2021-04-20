import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                onboardingheading,
                style: TextStyle(
                    fontSize: textSize16, fontWeight: FontWeight.w700),
              ),
              Text(
                onboardingsubheading,
                style: TextStyle(fontSize: textSize16),
              ),
              SizedBox(
                height: 30.h,
              ),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,

                // runAlignment: WrapAlignment.spaceEvenly,
                // crossAxisAlignment: WrapCrossAlignment.center,
                // clipBehavior: Clip.antiAlias,
                spacing: 20,
                runSpacing: 20,
                children: [
                  JobTypeBox(
                    icon: ("assets/images/designlogo.png"),
                    text: "Design",
                  ),
                  JobTypeBox(
                    icon: ("assets/images/cookinglogo.png"),
                    text: "Cooking",
                  ),
                  JobTypeBox(
                    icon: ("assets/images/managementlogo.png"),
                    text: ("Management"),
                  ),
                  JobTypeBox(
                    icon: ("assets/images/driver.png"),
                    text: ("Driving"),
                  ),
                  JobTypeBox(
                    icon: ("assets/images/carpenter.png"),
                    text: ("Manual work"),
                  ),
                  JobTypeBox(
                    icon: ("assets/images/itlogo.png"),
                    text: ("IT Department"),
                  ),
                  JobTypeBox(
                    icon: ("assets/images/marketanalysis.png"),
                    text: "Research ",
                  ),
                  JobTypeBox(
                    icon: ("assets/images/customerservice.png"),
                    text: ("BPO"),
                  ),
                  JobTypeBox(
                    icon: ('assets/images/administrator.png'),
                    text: "Administrative",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JobTypeBox extends StatefulWidget {
  final String text, icon;

  const JobTypeBox({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  _JobTypeBoxState createState() => _JobTypeBoxState();
}

class _JobTypeBoxState extends State<JobTypeBox> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;

    return InkWell(
      onTap: (){
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 150.r,
        width: 150.r,
        decoration: BoxDecoration(
            color: isSelected ? Colors.blue.shade300 : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 4,
                // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              widget.icon,
              height: 60.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              widget.text,
              style: TextStyle(fontSize: textSize18),
            ),
          ],
        ),
      ),
    );
  }
}
