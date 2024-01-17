// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Unit extends StatefulWidget {
  const Unit({super.key, required this.unitID});

  final String unitID;

  @override
  State<Unit> createState() => _UnitState();
}

class _UnitState extends State<Unit> {
  int tootal = 0;
  int textInnputNum = 5;
  List<TextEditingController> textIDs = [
    for (int i = 1; i < 5; i++) TextEditingController()
  ];

  // ignore: unused_element
  void _addUppgrade() {
    setState(() {
      textIDs.add(TextEditingController());
    });
  }

  @override
  Widget build(BuildContext context) {
    double unitWidth = MediaQuery.of(context).size.width,
        unitHeight = MediaQuery.of(context).size.height;

    //int num = int.parse(textIDs[2].text);

    return Container(
      height: unitHeight * 0.359,
      width: unitWidth * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromARGB(255, 72, 72, 72)),
          color: const Color.fromARGB(255, 110, 110, 110)),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ID:${widget.unitID}",
                  style: TextStyle(
                      fontSize: 8.1,
                      height: 2,
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 78, 78, 78)),
                ),
              ),
              Row(children: [
                Flexible(
                    flex: 6,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(label: Text('name')),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      controller: textIDs[0],
                    )),
                Flexible(
                    flex: 1,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(label: Text('cost')),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: textIDs[1],
                      onChanged: (value) {
                        setState(() {
                          tootal = int.parse(textIDs[2].text) *
                              int.parse(textIDs[1].text);
                        });
                      },
                    )),
                Flexible(
                    flex: 1,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(label: Text('Num')),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: textIDs[2],
                      onChanged: (value) {
                        setState(() {
                          tootal = int.parse(textIDs[2].text) *
                              int.parse(textIDs[1].text);
                        });
                      },
                    )),
                Flexible(flex: 2, child: Text('$tootal')),
              ]),
              NumInput(
                controller: textIDs[3],
                labal: 'uppgrad',
                mode: TextInputType.number,
                textFormat: FilteringTextInputFormatter.digitsOnly,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class NumInput extends StatelessWidget {
  const NumInput({
    super.key,
    required this.controller,
    required this.labal,
    required this.mode,
    required this.textFormat,
  });

  final String labal;
  final TextEditingController controller;
  final TextInputType mode;
  final TextInputFormatter textFormat;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: mode,
      decoration: InputDecoration(label: Text('$labal')),
      inputFormatters: <TextInputFormatter>[textFormat],
      controller: controller,
    );
  }
}
