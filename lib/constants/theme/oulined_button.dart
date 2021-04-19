import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lookingforjob_flutter/constants/colors.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final void Function() onPressed;

  const PrimaryOutlinedButton(
      {Key key, this.text, this.height, this.width, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height,
        width: width,
      ),
      child: (OutlinedButton(
        style: OutlinedButton.styleFrom(
          shadowColor: primaryColorLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          side: BorderSide(
            color: Colors.blue,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.blue),
        ),
      )),
    );
  }
}
