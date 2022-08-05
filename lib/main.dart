import 'package:flutter/material.dart';
import 'package:lec_5/listview.dart';
import 'package:lec_5/listviewpra1.dart';
import 'package:lec_5/listviewpra2.dart';
import 'package:lec_5/n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: list1(),
      //home: listpra1(),
      home: listpra2(),
      // home: const newpro(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  List<String> names = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

  /* void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
              title: Text(names[index]), leading: const Icon(Icons.star)),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),

          child:ListView.builder(itemCount: names.length,itemBuilder: (BuildContext context,int index)=>card(

          child:Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8.0),
            child:Text(names[index]),
          )
        )),
        ),
       /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.0
      ),
    );
  }*/
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Center(child: Text(names[index])),
                        ),
                        const Icon(Icons.person),
                        const Text("jnvjnfjnvjnfnv"),
                        const Padding(
                          padding: EdgeInsets.only(left: 150),
                          child: Text("RRR"),
                        )
                      ],
                    )
                    //  Container(height: 50,width: 50,color: Colors.purple,),
                    ),
              );
            }),

        //     child: ListView.builder(
        //       itemCount: names.length,
        //       itemBuilder: (BuildContext context, int index) => Card(
        //       child:Container(
        //         margin: const EdgeInsets.all(10),
        //         padding: const EdgeInsets.all(8.0),
        //          child:Text(names[index]),
        //      ),
        //   ),
        //   ),
        //   ),
        // );

        //   child: ListView.separated(
        //     itemCount: names.length,
        //     itemBuilder: (BuildContext context, int index) {
        // return ListTile(
        //   title:Text(names[index]),leading: const Icon(Icons.star)

        //   ),}
        //   separatorBuilder: (BuildContext context,int index)=>const Divider(),

        //    )
        //    ),
        // );
        // child: Card(
        //   elevation: 10,
        //   // child: Container(
        //   //   color: Colors.blue,
        //   //   child: Container(
        //   //     color: Colors.green,
        //       margin: const EdgeInsets.symmetric(horizontal: 30),
        //       // padding: const EdgeInsets.all(8.0),
        //       child:  Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",fit: BoxFit.cover,)
        //     ),
      ),
    );

    // )
//);
  }
}
