import 'package:designn_ajrakk/design_area.dart';

import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MatrixGestureDetector Demo',
      home: design_area()
    //    Scaffold(
    //     appBar: AppBar(
    //       title: Text('MatrixGestureDetector Demo'),
    //     ),
    //     body: Builder(
    //       builder: (BuildContext ctx) {
    //         return Center(
    //           child: SingleChildScrollView(
    //             child: Column(
    //               children: demos
    //                   .map((demo) => ListTile(
    //                         onTap: () => showDemo(ctx, demo),
    //                         leading: Icon(Icons.image),
    //                         title: Text(demo.title),
    //                         subtitle: Text(demo.subtitle),
    //                       ))
    //                   .toList(),
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    );
  
  }
}
