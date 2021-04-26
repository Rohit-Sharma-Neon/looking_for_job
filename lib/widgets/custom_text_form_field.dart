import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText, fontWeight, image;
  final Color bgColor, hintTextColor;
  final bool autoFocus;
  final IconData icons;
  final double topMargin;
  final String keyBoardType;
  final TextInputType textInputType;
  final Widget suffixIcon;


  CustomTextFormField({
    this.suffixIcon,
    this.keyBoardType,
    this.textInputType,
    this.icons,
    this.labelText = "",
    this.bgColor,
    this.hintTextColor,
    this.fontWeight,
    this.autoFocus = false,
    this.image,
    this.topMargin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              // changes position of shadow
            ),
          ]),
      child: TextFormField(
        // keyboardType: textInputType,
        textInputAction: TextInputAction.next,
        autofocus: autoFocus,
        keyboardType: textInputType,
        style: TextStyle(fontSize: textSize15.sp),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontSize: textSize14.sp),
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 0.h, left: 0),
          prefixIcon: Padding(
            padding: EdgeInsets.all(8.r),
            child: Icon(icons,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),

      ),
    );
  }
}
