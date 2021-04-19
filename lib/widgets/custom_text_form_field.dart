import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText, fontWeight;
  final Color bgColor, hintTextColor;
  final Widget preffixIcon;
  final bool autoFocus;
  final IconData icons;
  final String Image;



  CustomTextFormField({
    this.icons,
    this.hintText,
    this.bgColor,
    this.hintTextColor,
    this.fontWeight,
    this.preffixIcon, this.autoFocus, this.Image,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      // padding: EdgeInsets.symmetric(
      //     horizontal: 20
      // ),
      // alignment: Alignment.center,
      // height: height * 0.07,
      // decoration: BoxDecoration(
      //   color: bgColor,
      //   borderRadius: BorderRadius.circular(23),
      // ),
      // child: TextFormField(
      //   style: TextStyle(
      //       // fontWeight: CustomWeights.fontWeight(fontWeight)
      //   ),
      //   decoration: InputDecoration.collapsed(
      //     hintText: hintText,
      //     hintStyle: TextStyle(
      //       color: hintTextColor,
      //       // fontWeight: CustomWeights.fontWeight(fontWeight),
      //     ),
      //     border: InputBorder.none,
      //   ).copyWith(isDense: true),
      // ),
      child: TextField(
        autofocus: autoFocus,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300], width: 0.5),
            ),
            contentPadding: EdgeInsets.only(top: 15.h,left: 50),
            prefixIcon: Container(
              margin: EdgeInsets.only(right: 5.w),
              height: 50.h,
              width: 50.w,
              color: Color(0xFFF8F8F8),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(icons,color: Color(0xFFA0A0A0),),
              ),
            ),
            border: InputBorder.none),
      ),

    );
  }
}
