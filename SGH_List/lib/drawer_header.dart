// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawer_header extends StatelessWidget {
  const drawer_header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
        elevation: 1.5,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 75, 75, 75),
              ),
              child: null,
            ),
            Card(
              color: Color.fromARGB(255, 69, 49, 49),
              child: ListTile(
                leading: Icon(Icons.add_home),
                title: Text("Title"),
                subtitle: Text("Long Press return home"),
                trailing: Icon(Icons.more_vert),
                onLongPress: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
