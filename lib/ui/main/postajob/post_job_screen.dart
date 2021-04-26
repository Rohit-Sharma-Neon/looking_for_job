import 'package:flutter/cupertino.dart';
// import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';
import 'package:lookingforjob_flutter/widgets/base_app_bar2.dart';
import 'package:lookingforjob_flutter/widgets/base_drawer.dart';
import 'package:lookingforjob_flutter/widgets/custom_text_form_field.dart';


class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _jobTypeValue;
  int currentStep = 0;
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
        title: 'Post a Job',
        leadingIcon: Icons.menu,
        scaffoldKey: _scaffoldKey,
      ),
      drawer: BaseDrawer(),
      backgroundColor: Colors.white,
      body: CupertinoPageScaffold(
        child: SafeArea(
          child: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              switch (orientation) {
                case Orientation.portrait:
                 // return _buildStepper(StepperType.vertical);
                case Orientation.landscape:
                 // return _buildStepper(StepperType.horizontal);
                default:
                  throw UnimplementedError(orientation.toString());
              }
            },
          ),
        ),
      ),
    );
  }

 /* CupertinoStepper _buildStepper(StepperType type) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < 3;
    return CupertinoStepper(
      type: type,
      currentStep: currentStep,
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
      steps: [
        for (var i = 0; i < 3; ++i)
          _buildStep(
            title: Text('Step ${i + 1}'),
            isActive: i == currentStep,
            state: i == currentStep
                ? StepState.editing
                : i < currentStep ? StepState.complete : StepState.indexed,
          ),
        _buildStep(
          title: Text('Error'),
          state: StepState.error,
        ),
        _buildStep(
          title: Text('Disabled'),
          state: StepState.disabled,
        )
      ],
    );
  }*/

  Step _buildStep({
    Widget title,
    StepState state = StepState.indexed,
    bool isActive = false,
  }) {
    return Step(
      title: title,
      subtitle: Text('Subtitle'),
      state: state,
      isActive: isActive,
      content: LimitedBox(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),

          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [_boxShadow()],),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
               Text("Create your job posting\naccount",style: TextStyle(fontSize: textSize20,fontWeight: FontWeight.w600),),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Your Company Name",
                      style: TextStyle(
                          fontSize: textSize15,color: Colors.black
                      )),
                  TextSpan(
                      text: " *",
                      style: TextStyle(
                          fontSize: textSize20,
                          color: Colors.red))
                ]),
              ),
              SizedBox(height: 5),
              CustomTextFormField(
                icons: Icons.work),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Your Name",
                      style:  TextStyle(
                          fontSize: textSize15,color: Colors.black
                      )),
                  TextSpan(
                      text: " *",
                      style: TextStyle(
                          fontSize: textSize20,
                          color: Colors.red))
                ]),
              ),
              SizedBox(height: 5),
              CustomTextFormField(
               icons: Icons.drive_file_rename_outline,),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Your role in the hiring process",
                      style:TextStyle(
                          fontSize: textSize15,color: Colors.black
                      )),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 50,
                  width: 300,
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
                      hint: _jobTypeValue == null
                          ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          'Full Time',
                          style: TextStyle(
                              fontSize: textSize18,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                          : Text(
                        _jobTypeValue,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500),
                      ),
                      isExpanded: true,
                      iconSize: 30.0,
                      iconEnabledColor: Colors.grey,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500),
                      items: [
                        ' Full Time',
                        " Part Time",
                        " Temporary",
                        " Permanent",
                        " Internship",
                        " Freelancer",
                        " Remotely",
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
                            _jobTypeValue = val;
                          },
                        );
                      },
                    ),
                  )),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Phone Number",
                      style: TextStyle(
                          fontSize: textSize15,color: Colors.black
                      )),
                  TextSpan(
                      text: " *",
                      style: TextStyle(
                          fontSize: textSize20,
                          color: Colors.red))
                ]),
              ),
              SizedBox(height: 5),
              CustomTextFormField(
            textInputType: TextInputType.number,
                  icons: Icons.work),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Company Size",
                      style:TextStyle(
                          fontSize: textSize15,color: Colors.black
                      )),
                ]),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 50,
                  width: 300,
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
                      hint: _jobTypeValue == null
                          ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Text(
                          'Full Time',
                          style: TextStyle(
                              fontSize: textSize18,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                          : Text(
                        _jobTypeValue,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500),
                      ),
                      isExpanded: true,
                      iconSize: 30.0,
                      iconEnabledColor: Colors.grey,
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500),
                      items: [
                        ' 1 - 50',
                        " 50 - 150",
                        " 150 - 200",
                        " 200 - 300",
                        " 300 - 400",
                        " 400 - 500",
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
                            _jobTypeValue = val;
                          },
                        );
                      },
                    ),
                  )),
              SizedBox(height: 15),
            ],
          ),
        )
      ),
    );
  }
}