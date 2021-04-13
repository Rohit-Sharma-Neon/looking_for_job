import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/components/dashboard_desktop.dart';

import 'components/browsejob_mobile.dart';

class BrowseJobScreen extends StatefulWidget {
  @override
  _BrowseJobScreenState createState() => _BrowseJobScreenState();
}

class _BrowseJobScreenState extends State<BrowseJobScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          /// Mobile :-
          mobile: BrowseJobMobile(),
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
