import 'package:agenda_tutor_mobile/src/constants/colors.dart';
import 'package:agenda_tutor_mobile/src/screens/shared/customicons_icons.dart';
import 'package:agenda_tutor_mobile/src/screens/shared/fab_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Ecologica Innova",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                  child: TextField(
                    decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Ingrese un numero de dni",
                        fillColor: ThemeColorDefault.INPUT_BG),
                  ),
                ),
                Icon(
                  Customicons.user_plus,
                  color: ThemeColorDefault.INPUT_BG,
                  size: 80,
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ThemeColorDefault.PRIMARY,
          child: Icon(Icons.phone),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: FABBottomAppBar(
            centerItemText: "Contactar",
            items: [
              FABBottomAppBarItem(text: ""),
              FABBottomAppBarItem(text: "")
            ]));
  }
}
