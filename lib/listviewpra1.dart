import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class listpra1 extends StatefulWidget {
  const listpra1({Key? key}) : super(key: key);

  @override
  State<listpra1> createState() => _listpra1State();
}

class _listpra1State extends State<listpra1> {
  List<String> names = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];
  List icon = [
    Icons.person,
    Icons.call,
    Icons.book,
    Icons.person,
    Icons.call,
    Icons.book,
    Icons.person,
    Icons.call,
    Icons.book
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listview.builder")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              color: Colors.red,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(child: Text(names[index])),
                  ),
                  const Icon(Icons.person),
                  const Text("jnvjnfjnvjnfnv"),
                  const Padding(
                      padding: EdgeInsets.only(left: 300),
                      child: Icon(Icons.call,),
                       //Text("RRR"),

                      )
                ],
              ),
            ),
          );

          //  ListTile(

          //   trailing: Icon(icon[index]),
          //   title: Text(names[index]),
          //   subtitle: Text(names[index]),
          // );
        },
      ),
    );
  }
}
