import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/components/dashboard_desktop.dart';

import 'components/dashboard_mobile.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          /// Mobile :-
          mobile: DashBoardMobileComponent(),
          /// Tablet :-
          tablet: Container(
            height: double.infinity,
            color: Colors.red,
          ),

          /// Desktop :-
          desktop: DashBoardDesktopComponent(),
        ),
      ),
    );
  }
}
