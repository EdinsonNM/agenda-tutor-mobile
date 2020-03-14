import 'package:flutter/material.dart';

InputDecoration inputDecorationStyle({labelText}) {
  return InputDecoration(
      labelStyle: TextStyle(color: Colors.white),
      isDense: true,
      labelText: labelText,
      hintStyle: TextStyle(color: Colors.white),
      errorStyle: TextStyle(color: Colors.white));
}
