import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/ui/main/ankit/user_type_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
              // SizedBox(
              //   height: 20.h,
              // ),
              // Wrap(
              //   direction: Axis.horizontal,
              //   alignment: WrapAlignment.start,
              //   runAlignment: WrapAlignment.start,
              //
              //   // runAlignment: WrapAlignment.spaceEvenly,
              //   // crossAxisAlignment: WrapCrossAlignment.center,
              //   // clipBehavior: Clip.antiAlias,
              //   spacing: 20,
              //   runSpacing: 20,
              //   children: [
              //     JobTypeBox(
              //       icon: ("assets/images/designlogo.png"),
              //       text: "Design",
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/cookinglogo.png"),
              //       text: "Cooking",
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/managementlogo.png"),
              //       text: ("Management"),
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/driver.png"),
              //       text: ("Driving"),
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/carpenter.png"),
              //       text: ("Manual work"),
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/itlogo.png"),
              //       text: ("IT Department"),
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/marketanalysis.png"),
              //       text: "Research ",
              //     ),
              //     JobTypeBox(
              //       icon: ("assets/images/customerservice.png"),
              //       text: ("BPO"),
              //     ),
              //     JobTypeBox(
              //       icon: ('assets/images/administrator.png'),
              //       text: "Administrative",
              //     )
              //   ],
              // ),
              SingleChildScrollView(
                child: GridView.count(
                  controller: new ScrollController(keepScrollOffset: false),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  children: List.generate(
                    choices.length,
                    (index) {
                      return InkWell(
                        focusColor: primaryColorLight,
                        hoverColor: primaryColorLight,
                        highlightColor: primaryColorLight,
                        splashColor: primaryColorLight,
                        onTap: () {
                          Navigator.push(context,  MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  UserTypeScreen()),);
                          print("pressed");
                        },
                        child: Center(
                          child: SelectCard(choice: choices[index]),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class JobTypeBox extends StatefulWidget {
//   final String text, icon;
//
//   const JobTypeBox({
//     Key key,
//     this.text,
//     this.icon,
//   }) : super(key: key);
//
//   @override
//   _JobTypeBoxState createState() => _JobTypeBoxState();
// }
//
// class _JobTypeBoxState extends State<JobTypeBox> {
//   @override
//   Widget build(BuildContext context) {
//     bool isSelected = false;
//
//     return InkWell(
//       onTap: (){
//         setState(() {
//           isSelected = !isSelected;
//         });
//       },
//       child: Container(
//         height: 150.r,
//         width: 150.r,
//         decoration: BoxDecoration(
//             color: isSelected ? Colors.blue.shade300 : Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 4,
//                 blurRadius: 4,
//                 // changes position of shadow
//               ),
//             ]),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20.h,
//             ),
//             Image.asset(
//               widget.icon,
//               height: 60.h,
//             ),
//             SizedBox(
//               height: 20.h,
//             ),
//             Text(
//               widget.text,
//               style: TextStyle(fontSize: textSize18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Choice {
  const Choice({this.title, this.image});

  final String title;
  final String image;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Information Technology',
      image: "assets/images/itlogo.png"),
  const Choice(
      title: 'Management',
      image: "assets/images/managementlogo.png"),
  const Choice(
      title: 'Archictecture & Engineer',
      image: "assets/images/carpenter.png"),
  const Choice(
      title: 'Agriculture',
      image: "assets/images/agriculture.png"),
  const Choice(
      title: 'Banking and Finance',
      image: "assets/images/customerservice.png"),
  const Choice(title: 'law',
      image: "assets/images/law.png"),
  const Choice(
      title: 'Leisure Sports and Tourism',
      image: "assets/images/tourism.jpg"),
  const Choice(
      title: 'Advertising and PR',
      image: "assets/images/advertisment.png"),
  const Choice(title: 'Accounting',
      image: "assets/images/account.png"),
  const Choice(
      title: 'Education and Training',
      image: "assets/images/education.png"),
  const Choice(title: 'Graphic Design',
      image: "assets/images/graphicDesign.jpg"),
  const Choice(
      title: 'Health and Hospital',
      image: "assets/images/hospital.jpg"),
  const Choice(
      title: 'Restaurant and Food',
      image: "assets/images/resturant.png"),
  const Choice(
      title: 'Security and Safety',
      image: "assets/images/security.png"),
  const Choice(
      title: 'Real Estate',
      image: "assets/images/state.png"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 150.h,
        width: 150.w,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), //color of shadow
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        // color: Colors.grey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 35.h,
              ),
              Center(
                child: Image.asset(
                  choice.image,
                  height: 50.h,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                choice.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: textSize18.sp,
                ),
              ),
            ]),
      ),
    );
  }
}
