import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/theme/theme_bloc.dart';
import 'constants/theme/theme_state.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp( DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}

TextTheme textTheme;

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    textTheme = Theme.of(context).textTheme;
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () {
        return BlocProvider(
          create: (context) => ThemeBloc(
            ThemeState(),
          ),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                locale: DevicePreview.locale(context), // Add the locale here
                builder: DevicePreview.appBuilder,
                debugShowCheckedModeBanner: false,
                title: 'Looking for job',
                initialRoute: '/',
                routes: customRoutes,
                theme: ThemeData(
                  fontFamily: "Nunito",
                  primarySwatch: Colors.blue,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
