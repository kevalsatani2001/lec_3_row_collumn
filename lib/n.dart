import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class newpro extends StatefulWidget {
  const newpro({Key? key}) : super(key: key);

  @override
  State<newpro> createState() => _newproState();
}

class _newproState extends State<newpro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: 150,
              width: 150,
              //color: Colors.red,
              child: Card(
                //color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                shadowColor: Color.fromARGB(255, 232, 27, 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
