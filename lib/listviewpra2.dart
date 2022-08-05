import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class listpra2 extends StatefulWidget {
  const listpra2({Key? key}) : super(key: key);

  @override
  State<listpra2> createState() => _listpra2State();
}

class _listpra2State extends State<listpra2> {
  TextStyle? labeltext =
      const TextStyle(color: Colors.amber, fontFamily: "Shrikhand");
  List person = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16"
  ];
  List<String> names = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
  ];
  List<String> images = [
    "assets/i1.jpg",
    "assets/i3.jpg",
    "assets/i4.jpg",
    "assets/i5.jpg",
    "assets/i6.jpg",
    "assets/i7.jpg",
    "assets/i3.jpg",
    "assets/i6.jpg",
    "assets/i1.jpg",
    "assets/i2.jpg",
    "assets/i3.jpg",
    "assets/i4.jpg",
    "assets/i5.jpg",
    "assets/i6.jpg",
    "assets/i7.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: const Text(
          "Contact list",
          style: TextStyle(fontFamily: "Shrikhand"),
        ),
        actions: [Icon(Icons.more_vert)],
        backgroundColor: Colors.orange,
      ),

      //floatingActionButton: FloatingActionButton.large(onPressed: ),
      floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {}
          // setState()() {
          // print("00"),
          ), //};
      body: Center(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Card(
                //color: Colors.lightGreenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                margin: const EdgeInsets.all(5),
                shadowColor: Color.fromARGB(255, 232, 27, 12),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  //color: Colors.lightBlue,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(images[index]),
                        backgroundColor: Colors.amber,
                      ),
                      Column(
                        children: [
                          const Divider(),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(names[index]),
                          Text(names[index]),
                        ],
                      ),
                      const Spacer(),
                      Icon(Icons.message),
                      SizedBox(width: 10),
                      Icon(Icons.call),
                      SizedBox(width: 10),
                      Icon(Icons.whatsapp),
                    ],
                  ),

                  // child: ListTile(
                  //   leading: CircleAvatar(
                  //     backgroundImage: AssetImage(images[index]),
                  //     backgroundColor: Colors.amber,
                  //   ),
                  //   title: Text(person[index]),
                  //   subtitle: Text(names[index]),
                  //   trailing: Column(
                  //     children: [Icon(icon[index]), Icon(icon[index])],
                  //   ),
                  // ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
