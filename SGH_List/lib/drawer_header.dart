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
      elevation: 1.5,
      child: Column(
          children: <Widget>[
            DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 40, 120),
            ),
            child: null,
          ),

          Card(
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
        ],),


     ),
    );
  }
}