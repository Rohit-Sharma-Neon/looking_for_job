import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';
import 'package:lookingforjob_flutter/constants/sizes.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function() onPressed;
  // final Color color;

  const PrimaryButton({Key key, @required this.text, this.width, this.height, this.onPressed,  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: height.h,
      minWidth: width.w,
      child: RaisedButton(
        onPressed: onPressed,
        color: primaryColorLight,
        // onPressed: () {
        //   print('Pressed');
        // },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: textSize16.nsp),
        ),
      ),
    );
  }
}
