import 'package:flutter/material.dart';

import 'widgets/accordion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Snapshot'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({this.title});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
          ),
        ),
        body: Column(children: [
          Accordion('Holdings #1',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum ornare vulputate. Curabitur faucibus condimentum purus quis tristique.'),
          Accordion('Summary #2',
              'Fusce ex mi, commodo ut bibendum sit amet, faucibus ac felis. Nullam vel accumsan turpis, quis pretium ipsum. Pellentesque tristique, diam at congue viverra, neque dolor suscipit justo, vitae elementum leo sem vel ipsum'),
          Accordion('Performance #3',
              'Nulla facilisi. Donec a bibendum metus. Fusce tristique ex lacus, ac finibus quam semper eu. Ut maximus, enim eu ornare fringilla, metus neque luctus est, rutrum accumsan nibh ipsum in erat. Morbi tristique accumsan odio quis luctus.'),
        ]));
  }
}
