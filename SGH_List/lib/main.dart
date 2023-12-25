import 'package:flutter/material.dart';
import 'home.dart' ;

void main() {
  runApp( MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(252, 32, 32, 32)),
    home: const Home(),
  ));
}