import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';

import 'custom_drop_down.dart';

class BaseAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData leadingIcon;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const BaseAppBar2(
      {Key key, @required this.title, this.leadingIcon, this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingIcon == Icons.arrow_back_rounded
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                leadingIcon,
              ),
            )
          : InkWell(
              onTap: () {
                scaffoldKey.currentState.openDrawer();
              },
              child: Icon(
                leadingIcon,
              ),
            ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10.r),
        ),
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
