import 'package:agenda_tutor_mobile/src/constants/colors.dart';
import 'package:agenda_tutor_mobile/src/screens/shared/public_bottombar.dart';
import 'package:flutter/material.dart';

class LayoutPublic extends StatelessWidget {
  final Widget child;
  final bool fullBottomBar;
  LayoutPublic({@required this.child, this.fullBottomBar = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColorDefault.BG_COLOR,
      bottomNavigationBar: PublicBottomBar(
        full: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(width: double.infinity, child: child),
          ),
        ),
      ),
    );
  }
}
