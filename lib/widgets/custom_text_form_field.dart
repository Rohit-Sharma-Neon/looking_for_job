import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText, fontWeight;
  final Color bgColor, hintTextColor;

  CustomTextFormField({
    this.hintText,
    this.bgColor,
    this.hintTextColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 20
      ),
      alignment: Alignment.center,
      height: height * 0.07,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(23),
      ),
      child: TextFormField(
        style: TextStyle(
            // fontWeight: CustomWeights.fontWeight(fontWeight)
        ),
        decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
            // fontWeight: CustomWeights.fontWeight(fontWeight),
          ),
          border: InputBorder.none,
        ).copyWith(isDense: true),
      ),
    );
  }
}
