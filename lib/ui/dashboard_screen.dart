import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lookingforjob/constants/theme/app_theme.dart';
import 'package:lookingforjob/constants/theme/theme_bloc.dart';
import 'package:lookingforjob/constants/theme/theme_event.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool isSwitched = false;
  final itemAppTheme = AppTheme.values[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "kjfkdjf",
            style: appThemeData[itemAppTheme].textTheme.body1,
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              isSwitched = value;
              isSwitched
                  ? BlocProvider.of<ThemeBloc>(context)
                      .dispatch(ThemeChanged(theme: AppTheme.values[1]))
                  : BlocProvider.of<ThemeBloc>(context)
                      .dispatch(ThemeChanged(theme: AppTheme.values[0]));
            },
          ),
          MaterialButton(
            onPressed: () {
              BlocProvider.of<ThemeBloc>(context)
                  .dispatch(ThemeChanged(theme: AppTheme.values[0]));
            },
            child: Text("jdfldjlfksd"),
          ),
          MaterialButton(
            onPressed: () {
              BlocProvider.of<ThemeBloc>(context)
                  .dispatch(ThemeChanged(theme: AppTheme.values[1]));
            },
            child: Text("jdfldjlfksd"),
          ),
        ],
      ),
    );
  }
}
