import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants/theme/theme_bloc.dart';
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
      builder: () {
        return BlocProvider(
          create: (context) => ThemeBloc(ThemeState()),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
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