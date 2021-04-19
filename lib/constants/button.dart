import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function() onPressed;

  const MyButton({@required this.text, this.width, this.height, this.onPressed});
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: height),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColorLight,
          onPrimary: primaryColorLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornersRadiusLowest),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: textSize16.sp),
        ),
      ),
    );
  }
}
