import 'package:flutter/material.dart';
import 'list_bulder.dart';
import 'list_vier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SGH List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 30, 
              child: Text(' '),
            ),
            Expanded(
              flex: 14,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 226, 81, 74),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255) ,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                  minimumSize: const Size(100, 40),
                  maximumSize: const Size(200, 50)
                ),
                child: const Text('Nye List'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListBulderPage(),
                        settings: const RouteSettings(name: '/listBulderPage')
                      ),
                    );
                },
             ),
            ),
            const Expanded(
              flex: 2,
              child: Text('  ')),
            Expanded(
              flex: 14,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 226, 81, 74),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255) ,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                  minimumSize: const Size(100, 40),
                  maximumSize: const Size(200, 50)
                ),
                child: const Text('Open List'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListVierPage(),
                        settings: const RouteSettings(name: '/listViserPage'),
                      ),
                    );
                },)
              ),
                const Expanded(
                flex: 30, 
              child: Text(' '),
            ),
          ],
       )
     ),
    );
  }
}
