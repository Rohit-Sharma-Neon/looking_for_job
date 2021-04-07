import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lookingforjob_flutter/ui/main/dashboard_screen/dashboard_screen.dart';
import 'constants/routes.dart';
import 'constants/theme/theme_bloc.dart';
import 'constants/theme/theme_state.dart';
import 'constants/theme/theme_state.dart';

void main() {
  runApp(MyApp());
}

TextTheme textTheme;

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    textTheme = Theme.of(context).textTheme;
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () {
        return BlocProvider(
          builder: (context) => ThemeBloc(),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Looking for job',
                initialRoute: '/',
                routes: customRoutes,
                theme: state.themeData,
              );
            },
          ),
        );
      },
    );
  }
}