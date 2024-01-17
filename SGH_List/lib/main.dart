import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'SGH_List',
    theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(251, 137, 137, 137)),
    home: const Home(),
  ));
}
