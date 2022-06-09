import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class list1 extends StatefulWidget {
  const list1({Key? key}) : super(key: key);

  @override
  State<list1> createState() => _list1State();
}

class _list1State extends State<list1> {
  List<String> names = ["a", "b", "c", "d", "e"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(names[0]),
          ),
        ),
      ),
    );
  }
}
