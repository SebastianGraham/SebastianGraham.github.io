import 'package:flutter/material.dart';
import '../drawer_header.dart';
// ignore: unused_import
import 'unit.dart';

class ListBulder extends StatefulWidget {
  const ListBulder({super.key});

  @override
  State<StatefulWidget> createState() => _ListBulderState();
}

class _ListBulderState extends State<ListBulder> {
  bool _active = false;

  int numID = 0;
  final List<String> unitIDs = <String>[];

  void _handleAddUnit(bool nyeValue) {
    setState(() {
      _active = nyeValue;
      unitIDs.add(numID.toString());
      numID += 1;
      _active = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double windowwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 122, 122),
        title: const Text('list bulder'),
      ),
      drawer: const drawer_header(),

      //listbulder
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: unitIDs.length,
        itemBuilder: (BuildContext context, int index) => Dismissible(
          key: Key(unitIDs[index]),
          onDismissed: (direction) {
            setState(() {
              unitIDs.removeAt(index);
            });
          },
          child: Row(
            children: <Widget>[Unit(unitID: unitIDs[index])],
          ),
        ),
      ),
      floatingActionButton: AddUnit(
        unitCount: unitIDs.length,
        active: _active,
        onChanged: _handleAddUnit,
      ),
    );
  }
}

class AddUnit extends StatelessWidget {
  const AddUnit({
    super.key,
    this.active = false,
    required this.onChanged,
    required this.unitCount,
  });

  final int unitCount;
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'nr of unit: ${unitCount.toString()}',
      onPressed: (_handleTap),
      child: active ? const Icon(Icons.circle) : const Icon(Icons.add),
    );
  }
}
