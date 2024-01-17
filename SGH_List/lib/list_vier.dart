import 'package:flutter/material.dart';
import '../drawer_header.dart';

class ListVierPage extends StatelessWidget {
  const ListVierPage({super.key});

  final String i = 'test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List vier'),
      ),
      drawer: const drawer_header(),
      body: Center(
        child: Column(children: [
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Name'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ]),
      ),
    );
  }
}
