import 'dart:async';
import 'package:bloc/bloc.dart';

import 'app_theme.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);


  @override
  ThemeState get initialState =>
      // Everything is accessible from the appThemeData Map.
  ThemeState(themeData: appThemeData[AppTheme.LightTheme]);

  @override
  Stream<ThemeState> mapEventToState(
      ThemeEvent event,
      ) async* {
    if (event is ThemeChanged) {
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }
}