import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'app_theme.dart';


@immutable
abstract class ThemeEvent extends Equatable {
  // Passing class fields in a list to the Equatable super class
  ThemeEvent([List props = const []]) : super();
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({
    @required this.theme,
  }) : super([theme]);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}