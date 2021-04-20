import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:lookingforjob_flutter/ui/onboarding_screens/signin_screen/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 5000),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      ),
    );
    _controller = AnimationController(
        duration: const Duration(milliseconds: 4800), vsync: this, value: 0.4);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.01, 1.0, 0.1],
              colors: [Colors.blue[200], Colors.white, Colors.greenAccent])),
      child: ScaleTransition(
          scale: _animation,
          alignment: Alignment.center,
          child: Center(
            child: Image.asset(
              "assets/images/lookingforjob_bg.png",
              height: 200.h,
              // color: facebookColor,
            ),
          )),
    );
  }
}
