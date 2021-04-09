import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../main.dart';
import '../colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
  // BlueLight,
  // BlueDark,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    brightness: Brightness.light,
    primaryColorLight: primaryColorLight,
    accentColor: primaryColorLight,
    primarySwatch: Colors.blue,

    /// SCAFFOLD BACKGROUND COLOR
    scaffoldBackgroundColor: Colors.white,

    /// CARD THEME
    cardTheme: CardTheme(
      color: Colors.white,
    ),

    /// TEXT THEME
    textTheme: GoogleFonts.openSansTextTheme(textTheme).copyWith(
      headline1: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingSmall),
      headline2: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingMedium),
      headline3: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingBig),
    ),
    /*textTheme: TextTheme(
      bodyText1: TextStyles._primaryTSL,
      headline1: TextStyles._headingTSL,
      subtitle1: TextStyles._hintOrLabelTSL,
      caption: TextStyles._subtilelTSL,
      bodyText2: TextStyles._bottomNavigationBarTSL,
      subtitle2: TextStyles._textFormFieldTSL,
      headline2: TextStyles._stickyHeadersTSL,
      headline3: TextStyles._galleryTitleTSL,
      headline4: TextStyles._subscriptionTSL,
      headline5: TextStyles._subscription1TSL,
      headline6: TextStyles._bottomRadioTSL,
    ),*/
    // fontFamily: "Oswald",

    /// APP BAR THEME
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
      ),
    ),

    /// COLOR SCHEME
    colorScheme: ColorScheme.light(
      primary: stickBg,
      secondary: Colors.black,
      primaryVariant: Color(0xFF286472),
      secondaryVariant: Color(0xFF286472),
    ),

    /// Icon Theme
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),

  ///  Dark Theme
  ///  Dark Theme
  ///  Dark Theme

  AppTheme.DarkTheme: ThemeData(
    /// CARD THEME
    cardTheme: CardTheme(
      color: Colors.white,
    ),

    cupertinoOverrideTheme: CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
          dateTimePickerTextStyle: TextStyle(color: Colors.white, fontSize: 14),
          pickerTextStyle: TextStyle(color: Colors.white, fontSize: 14)),
    ),

    /// TEXT THEME
    textTheme: GoogleFonts.openSansTextTheme(textTheme).copyWith(
      headline1: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingSmall),
      headline2: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingMedium),
      headline3: GoogleFonts.nunito(textStyle: TextStyles._primaryHeadingBig),
    ),
    /*textTheme: GoogleFonts.openSansTextTheme(textTheme).copyWith(
      bodyText1:
          GoogleFonts.concertOne(textStyle: TextStyles._primaryHeadingSmall),
    ),*/
    /*TextTheme(
      bodyText1: TextStyles._primaryTSD,
      headline1: TextStyles._headingTSD,
      subtitle1: TextStyles._hintOrLabelTSD,
      caption: TextStyles._subtilelTSD,
      bodyText2: TextStyles._bottomNavigationBarTSD,
      subtitle2: TextStyles._textFormFieldTSD,
      headline2: TextStyles._stickyHeadersTSD,
      headline3: TextStyles._galleryTitleTSD,
      headline4: TextStyles._subscriptionTSD,
      headline5: TextStyles._subscription1TSD,
      headline6: TextStyles._bottomRadioTSD,
    ),*/
    // fontFamily: "Oswald",

    /// SCAFFOLD BACKGROUND COLOR
    scaffoldBackgroundColor: heavyDark,

    /// APP BAR THEME
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
      ),
    ),

    /// COLOR SCHEME
    colorScheme: ColorScheme.dark(
      primary: mediumDark,
      secondary: lightDark,
      primaryVariant: Color(0xFFEBA505),
      secondaryVariant: Colors.white,
    ),
    bottomAppBarColor: Color(0xff383838),

    /// Icon Theme
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
/*  AppTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  ),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
  ),*/
};

class TextStyles {
  /// Text Styles For Light Theme
  static final TextStyle _primaryHeadingSmall = TextStyle(
      fontSize: 24.nsp, fontWeight: FontWeight.bold, color: Colors.black);
  static final TextStyle _primaryHeadingMedium = TextStyle(
      fontSize: 28.nsp, fontWeight: FontWeight.bold, color: Colors.black);
  static final TextStyle _primaryHeadingBig = TextStyle(
      fontSize: 32.nsp, fontWeight: FontWeight.bold, color: Colors.black);
  static final TextStyle _bottomNavigationBarTSL = TextStyle(fontSize: 14.nsp);
  static final TextStyle _hintOrLabelTSL =
      TextStyle(fontSize: 14.nsp, color: Colors.grey);
  static final TextStyle _subtilelTSL =
      TextStyle(fontSize: 12.nsp, color: Colors.black);
  static final TextStyle _textFormFieldTSL = TextStyle(fontSize: 14.nsp);
  static final TextStyle _headingTSL = TextStyle(
      fontSize: 14.nsp, fontWeight: FontWeight.w300, color: Colors.black);
  static final TextStyle _stickyHeadersTSL = TextStyle(
      fontSize: 16.nsp, fontWeight: FontWeight.w400, color: textColor);
  static final TextStyle _galleryTitleTSL = TextStyle(
      fontSize: 16.nsp, fontWeight: FontWeight.bold, color: Color(0xFF207F9E));
  static final TextStyle _subscriptionTSL = TextStyle(
      fontSize: 18.nsp, fontWeight: FontWeight.bold, color: Colors.black);
  static final TextStyle _subscription1TSL = TextStyle(
      fontSize: 18.nsp, fontWeight: FontWeight.bold, color: Color(0xFFEBA505));
  static final TextStyle _bottomRadioTSL = TextStyle(
      fontSize: 14.nsp, fontWeight: FontWeight.w500, color: Color(0xFF286472));

  /// Text Styles For Dark Theme
  static final TextStyle _primaryTSD =
      TextStyle(fontSize: 14.nsp, color: Colors.white);
  static final TextStyle _bottomNavigationBarTSD =
      TextStyle(fontSize: 14.nsp, color: Colors.white);
  static final TextStyle _hintOrLabelTSD =
      TextStyle(fontSize: 14.nsp, color: Colors.grey);
  static final TextStyle _subtilelTSD =
      TextStyle(fontSize: 12.nsp, color: Colors.white);
  static final TextStyle _textFormFieldTSD =
      TextStyle(fontSize: 14.nsp, color: Colors.white);
  static final TextStyle _headingTSD = TextStyle(
      fontSize: 14.nsp, fontWeight: FontWeight.w300, color: Colors.white);
  static final TextStyle _stickyHeadersTSD = TextStyle(
      fontSize: 16.nsp, fontWeight: FontWeight.w400, color: textColorDark);
  static final TextStyle _galleryTitleTSD = TextStyle(
      fontSize: 16.nsp, fontWeight: FontWeight.bold, color: Colors.white);
  static final TextStyle _subscriptionTSD = TextStyle(
      fontSize: 18.nsp, fontWeight: FontWeight.bold, color: Colors.white);
  static final TextStyle _subscription1TSD = TextStyle(
      fontSize: 18.nsp, fontWeight: FontWeight.bold, color: Color(0xFFEBA505));
  static final TextStyle _bottomRadioTSD = TextStyle(
      fontSize: 14.nsp, fontWeight: FontWeight.w500, color: Color(0xFFEBA505));
}
