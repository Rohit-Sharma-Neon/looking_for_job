import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class ThemeState extends Equatable {
  final ThemeData themeData;

  ThemeState({
    @required this.themeData,
  }) : super();

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}