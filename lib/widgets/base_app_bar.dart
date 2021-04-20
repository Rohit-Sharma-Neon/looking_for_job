import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:lookingforjob_flutter/constants/image_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/strings.dart';
import 'package:lookingforjob_flutter/drawer/menu_widget.dart';

import 'custom_drop_down.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    String _selectedValue;
    return AppBar(
      leading: Container(),
      leadingWidth: 0,
      backgroundColor: Colors.white,
      actions: [
        SizedBox(width: 10.w),
        Image.asset(
          appLogoWithName,
          width: 90.w,
        ),
        SizedBox(width: 5.w),
        CountryCodePicker(
          searchDecoration: InputDecoration(
            hintText: search,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.8),
            ),
          ),
          onChanged: print,
          initialSelection: 'IN',
          showCountryOnly: true,
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
        ),
        Spacer(),
        CustomDropdown<String>(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          height: double.infinity,
          items: ['A', 'B', 'C'],
          onChanged: (val) => _selectedValue = val,
          center: true,
        ),
        SizedBox(width: 5.w),
        InkWell(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 6.h),
            height: double.infinity,
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: Image(
                height: 5.h,
                width: 20.w,
                image: AssetImage('assets/images/blackmenu.png')),
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}