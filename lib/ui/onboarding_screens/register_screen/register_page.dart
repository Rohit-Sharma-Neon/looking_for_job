import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/responsive/responsive.dart';

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
