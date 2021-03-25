import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';
import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

import 'components/register_desktop.dart';
import 'components/register_mobile.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: RegisterDesktopComponent(),
        tablet: Container(
          color: Colors.red,
        ),
        mobile: RegisterMobileComponent(),
      ),
    );
  }
}
