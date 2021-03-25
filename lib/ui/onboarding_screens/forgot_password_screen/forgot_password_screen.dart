import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';

import 'components/forgot_desktop.dart';
import 'components/forgot_mobile.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: ForgotDesktopComponent(),
        tablet: Container(
          color: Colors.red,
        ),
        mobile: ForgotMobileComponent(),
      ),
    );
  }
}
