import 'package:flutter/material.dart';

class PublicBottomBar extends StatelessWidget {
  final bool full;
  PublicBottomBar({this.full = false});
  @override
  Widget build(BuildContext context) {
    List<Widget> content = [];
    content.add(CircleAvatar(
      radius: 40.0,
      backgroundColor: Colors.green[300],
    ));
    if (full) {
      content.add(SizedBox(height: 10));
      content.add(Text("Institucion educativa"));
      content.add(Text("Ecologica innova"));
    }
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(340, 120),
                topRight: Radius.elliptical(340, 120))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: content.toList()),
        height: full ? 180 : 120);
  }
}
