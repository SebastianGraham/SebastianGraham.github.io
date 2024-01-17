import 'package:flutter/material.dart';
import 'listlib/list_bulder.dart';
import 'list_vier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 137, 137),
        title: const Text('SGH List'),
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 30, child: Text(' ')),
          Expanded(
              flex: 14,
              child: ManuButton(
                label: 'list building',
                goToPage: ListBulder(),
                routeName: '/listbuilding',
              )),
          Expanded(flex: 5, child: Text('')),
          Expanded(
              flex: 15,
              child: ManuButton(
                label: 'show list',
                goToPage: ListVierPage(),
                routeName: '/showlist',
              )),
          Expanded(flex: 30, child: Text(' ')),
        ],
      )),
    );
  }
}

class ManuButton extends StatelessWidget {
  const ManuButton({
    super.key,
    required this.routeName,
    required this.goToPage,
    required this.label,
  });

  final String label, routeName;
  final Widget goToPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 226, 81, 74),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          minimumSize: const Size(100, 40),
          maximumSize: const Size(200, 50)),
      child: Text(' $label '),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => goToPage,
            settings: const RouteSettings(name: '/listViserPage'),
          ),
        );
      },
    );
  }
}
