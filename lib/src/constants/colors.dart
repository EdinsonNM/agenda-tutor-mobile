import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeColor extends Equatable {
  @override
  List<Object> get props => [];
}

class ThemeColorDefault extends ThemeColor {
  static const Color BG_COLOR = Color.fromRGBO(53, 101, 112, 1);
  static const Color TEXT_COLOR = Colors.white;
  static const Color PRIMARY = Color.fromRGBO(107, 185, 161, 1);
  static const Color INPUT_BG = Color.fromRGBO(232, 232, 232, 1);
}

class ThemeColorDark extends ThemeColor {
  static const Color BG_COLOR = Color.fromRGBO(53, 101, 112, 1);
}

class ThemeColorLight extends ThemeColor {
  static const Color BG_COLOR = Color.fromRGBO(53, 101, 112, 1);
}
