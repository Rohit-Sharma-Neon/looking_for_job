import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/theme/theme_bloc.dart';
import 'constants/theme/theme_state.dart';
import 'ui/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            title: 'Looking for job',
            theme: state.themeData,
            home: DashBoardScreen(),
          );
        },
      ),
    );
  }
}
