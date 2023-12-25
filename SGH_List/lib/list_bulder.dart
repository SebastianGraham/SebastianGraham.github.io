import 'package:flutter/material.dart';
import 'drawer_header.dart';

class Unit extends StatelessWidget{
  const Unit({super.key});

  @override
  Widget build (BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 72, 72, 72)
        ),
        color: const Color.fromARGB(255, 110, 110, 110)
      ),
      //padding: const EdgeInsets.all(10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('1.1'),
              Text('1.2'),
            ],
          ),
          Column(
            children: [
              Text('2.1')
            ],
          ),
          Column(children: [
            Text('3.1'),
            Text('3.2')
          ],)
        ]
      ),
    );
  }
}

class ListBulderPage extends StatelessWidget {
  const ListBulderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list bulder'),
      ),
      drawer: const drawer_header(),
      
      body: 
        
        const Unit(),
        
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {}
        ),
    );

  }
}