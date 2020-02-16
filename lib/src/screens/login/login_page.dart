import 'package:agenda_tutor_mobile/src/constants/colors.dart';
import 'package:agenda_tutor_mobile/src/constants/routes_ui.dart';
import 'package:agenda_tutor_mobile/src/screens/shared/layout_public.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        isDense: true,
                        labelText: "Usuario",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        isDense: true,
                        labelText: "Contrasenia",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, RoutesUI.URI_HOME);
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
                )),
          ],
        ));
  }
}
