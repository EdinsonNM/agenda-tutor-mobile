import 'package:agenda_tutor_mobile/src/constants/colors.dart';
import 'package:agenda_tutor_mobile/src/constants/routes_ui.dart';
import 'package:agenda_tutor_mobile/src/screens/login/form/validators.dart';
import 'package:agenda_tutor_mobile/src/screens/shared/layout_public.dart';
import 'package:flutter/material.dart';

import 'styles/login_style.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _username;
  String _password;
  @override
  Widget build(BuildContext context) {
    return LayoutPublic(
        fullBottomBar: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            Text(
              "Mi agenda tutor",
              style: TextStyle(color: ThemeColorDefault.TEXT_COLOR),
            ),
            Text("Ingresa tu usuario y contrasenia",
                style: TextStyle(color: ThemeColorDefault.TEXT_COLOR)),
            SizedBox(height: 20.0),
            Container(
                width: 300.0,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: inputDecorationStyle(labelText: "Usuario"),
                        validator: loginEmailValidator,
                        onChanged: (String value) {
                          _username = value;
                        },
                      ),
                      TextFormField(
                        decoration:
                            inputDecorationStyle(labelText: "Contraseña"),
                        validator: loginPasswordValidator,
                        obscureText: true,
                        onChanged: (String value) {
                          _password = value;
                        },
                      ),
                      SizedBox(height: 20.0),
                      MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushReplacementNamed(
                                context, RoutesUI.URI_HOME);
                          }
                        },
                        child: Text("Entrar"),
                        minWidth: double.infinity,
                        color: Colors.orange[700],
                        textColor: Colors.white,
                      ),
                      InkWell(
                        child: Text(
                          "Aun no tienes cuenta?. Registrate",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, RoutesUI.URI_REGISTER);
                        },
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
