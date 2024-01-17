// ignore_for_file: use_super_parameters, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class Unit2 extends StatefulWidget {
  final String unitID;

  const Unit2({Key? key, required this.unitID}) : super(key: key);

  @override
  _Unit2State createState() => _Unit2State();
}

class _Unit2State extends State<Unit2> {
  // List of TextEditingControllers
  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    // Initialize with 4 TextFields
    for (int i = 0; i < 4; i++) {
      _controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    // Dispose controllers when widget is disposed
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addTextField() {
    if (_controllers.length < 20) {
      setState(() {
        _controllers.add(TextEditingController());
      });
    }
  }

  void _removeTextField() {
    if (_controllers.isNotEmpty) {
      setState(() {
        _controllers.removeLast().dispose();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text('jd')),
        Expanded(
          child: ListView.builder(
            itemCount: _controllers.length,
            itemBuilder: (context, index) {
              return TextField(
                controller: _controllers[index],
                decoration: InputDecoration(labelText: 'Input ${index + 1}'),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: _addTextField,
              child: Text('Add TextField'),
            ),
            ElevatedButton(
              onPressed: _removeTextField,
              child: Text('Remove TextField'),
            ),
          ],
        ),
      ],
    );
  }
}
