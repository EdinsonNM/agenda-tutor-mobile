import 'package:agenda_tutor_mobile/src/constants/routes_ui.dart';
import 'package:agenda_tutor_mobile/src/screens/home/home_page.dart';
import 'package:agenda_tutor_mobile/src/screens/login/login_page.dart';
import 'package:agenda_tutor_mobile/src/screens/register/register_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          hintColor: Colors.white,
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.red))),
      initialRoute: RoutesUI.URI_LOGIN,
      routes: <String, WidgetBuilder>{
        RoutesUI.URI_LOGIN: (BuildContext context) => LoginPage(),
        RoutesUI.URI_HOME: (BuildContext context) => HomePage(),
        RoutesUI.URI_REGISTER: (BuildContext context) => RegisterPage(),
      },
    );
  }
}
